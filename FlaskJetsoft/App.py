# importando framework flask e bibliotecas para usar servicoes web
from flask import Flask, render_template, request, redirect, url_for, flash, session, Response
from fpdf import FPDF
from functools import wraps
# importando biblioteca para conectar com mysql
from flaskext.mysql import MySQL
import pymysql
from datetime import datetime

# iniciando variavel app
app = Flask(__name__)
app.secret_key = "flash message"

mysql = MySQL()
# configurando conexão com banco de dados
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'jetsoft'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'

mysql.init_app(app)
# python -m pip install --upgrade pip setuptools virtualenv- para atualizar o env
# rota para a página inicial
# config pro phpmyadmin em caso de o erro: "Field ''1'' doesn't have a default value no wampserver
# select @@GLOBAL.sql_mode
# set GLOBAL sql_mode='ONLY_FULL_GROUP_BY,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION'


def login_required(f):
    @wraps(f)
    def wrap(*args, **kwargs):
        if 'logged_in' in session:
            return f(*args, **kwargs)
        else:
            flash('Tem que fazer o Login primeiro.')
            return redirect(url_for('login'))
    return wrap

def login_nivel(f):
    @wraps(f)
    def wrap(*args, **kwargs):
        if session['nivel'] == 'tatico':
            return f(*args, **kwargs)
        else:
            flash('voce nao tem permissao')
            return redirect(url_for('erro'))
            
    return wrap


@app.route('/index')
@login_required
def index():

    con = mysql.connect()
    cur = con.cursor()
    cur.execute(
        "SELECT * FROM  cliente order by id DESC limit 10")
    quadro_cliente = cur.fetchall()
    cur.execute("SELECT  nome_posto,descricao,escala, qtd_colaborador,cliente.nome_fantasia FROM posto_trabalho inner join cliente on posto_trabalho.cliente_id=cliente.id order by posto_trabalho.id DESC limit 10 ")
    data = cur.fetchall()
    cur.execute(
        "select count(id) from cliente")
    numeroCliente = cur.fetchall()
    cur.execute(
        "select count(id) from posto_trabalho")
    numeroPostos = cur.fetchall()
    cur.execute(
        "select count(id) from colaboradores")
    numeroColaboradores = cur.fetchall()

    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()
    return render_template('/index.html', data=data, quadro_cliente=quadro_cliente, numeroColaboradores=numeroColaboradores, numeroPostos=numeroPostos, numeroCliente=numeroCliente, nome=nome, nivel=nivel)
  

@app.route('/presenca_tatico', methods=['GET', 'POST'])
@login_required
@login_nivel
def presenca_tatico():
    mesaberto = datetime.today().strftime('%m')
    listames = ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro']
    global mesfechado
    con = mysql.connect()
    cur = con.cursor()
    cur.execute(
        "SELECT * FROM `%s` order by posto_trabalho, tipo_cobertura ,registro",mesaberto)
    data = cur.fetchall()
    cur.execute(
        "SELECT nome_completo FROM colaboradores"
    )
    colaborador = cur.fetchall()
    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()

    if request.method == "POST":
        flash("Fechamento realizado!")
        mesfechado = mesaberto
        cur.execute(
            "UPDATE `mes` SET `mes_fechado` = %s", (mesfechado)
        )
        con.commit()
        return redirect(url_for('presenca_tatico'))
    else:
        return render_template('/presenca_tatico.html',controle=data,  mesaberto=listames[int(mesaberto)-1], colaborador=colaborador, nome=nome, nivel=nivel)


@app.route('/controle_presenca', methods=['GET', 'POST'])
@login_required
def controle():
    mesaberto = datetime.today().strftime('%m')
    listames = ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro']
    con = mysql.connect()
    cur = con.cursor()
    cur.execute(
        'SELECT mes_fechado FROM mes'
    )
    mesfechado = str(cur.fetchall()).replace("'","")
    mesfechado = mesfechado.replace("(","")
    mesfechado = mesfechado.replace(")","")
    mesfechado = mesfechado.replace(",","")
    print(mesfechado)
    cur.execute(
        "SELECT * FROM `%s` order by posto_trabalho, tipo_cobertura ,registro",mesaberto)
    data = cur.fetchall()
    cur.execute(
        "SELECT nome_completo FROM colaboradores"
    )
    colaborador = cur.fetchall()
    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()

    if request.method == "POST":
        if mesaberto == mesfechado:
            flash("Erro: Esse mês já foi validado pelo usuário Tático")
            return redirect(url_for('controle'))
        else:
            colaborador = request.form["colaborador"]
            dia = request.form["dia"]
            pouf = request.form["pouf"]

            cur.execute(
                "UPDATE `%s` SET `%s` = %s WHERE `colaborador` = %s", (
                    mesaberto, dia, pouf, colaborador)
            )
            con.commit()
        return redirect(url_for('controle'))
    else:
        return render_template('/controle_presenca.html', mesaberto=listames[int(mesaberto)-1], controle=data, colaborador=colaborador, nome=nome, nivel=nivel)

# rota para a página de destino (cadastro de colaboradores)


@app.route('/cadastro_colaboradores', methods=['GET', 'POST'])
# função para tratamento dos dados
@login_required
def cadastro():
    # código de conectividade com banco de dados
    con = mysql.connect()
    cur = con.cursor()
    cur.execute(
        "SELECT nome_posto FROM posto_trabalho"
    )
    posto_trabalho = cur.fetchall()
    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()

    if request.method == "POST":
        flash("Dados gravados com sucesso!")
        nome = request.form["nome"]
        cpf = request.form["cpf"]
        matricula = request.form["matricula"]
        funcao = request.form["funcao"]
        admissao = request.form["admissao"]
        email = request.form["email"]
        telefone = request.form["telefone"]
        tipo_cobertura = request.form["devweb"]
        posto_trabalho = request.form["posto_trabalho"]

        cur.execute(
            "SELECT id FROM posto_trabalho WHERE nome_posto = %s ", (posto_trabalho))
        posto_trabalho_id = cur.fetchall()

        cur.execute("INSERT INTO `colaboradores`(`nome_completo`,`cpf`,`matricula`,`funcao`,`data_admissao`,`email`,`telefone`,`tipo_cobertura`,`posto_trabalho_id` ) VALUES(%s, %s, %s, %s, %s, %s, %s, %s,%s)",
                    (nome, cpf, matricula, funcao, admissao,
                     email, telefone, tipo_cobertura, posto_trabalho_id)
                    )

        cur.execute(
            "SELECT id FROM colaboradores WHERE nome_completo = %s ", (nome))
        colaborador_id = cur.fetchall()

        cur.execute(
            "INSERT INTO `'1'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'2'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'3'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'4'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'5'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'6'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'7'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'8'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'9'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'10'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'11'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        cur.execute(
            "INSERT INTO `'12'` (`colaborador`, `colaborador_id`,`posto_trabalho`, `posto_trabalho_id`,`funcao`, `tipo_cobertura`) VALUES (%s, %s, %s, %s, %s, %s)", (
                nome, colaborador_id, posto_trabalho, posto_trabalho_id, funcao, tipo_cobertura)
        )
        con.commit()
        return redirect(url_for('cadastro'))
    else:
        return render_template('/cadastro_colaboradores.html', posto_trabalho=posto_trabalho, nome=nome, nivel=nivel)


@app.route('/contrato', methods=['GET', 'POST'])
@login_required
def contrato():
    con = mysql.connect()
    cur = con.cursor()
    cur.execute(
        "SELECT cliente.razao_social , posto_trabalho.nome_posto FROM cliente INNER JOIN posto_trabalho ON cliente.id = posto_trabalho.cliente_id"
    )
    cliente = cur.fetchall()

    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()

    if request.method == "POST":
        flash("Dados gravados com sucesso!")
        clienteposto = request.form["clienteposto"]
        valor = request.form["valor"]
        data_admissao = request.form["data_admissao"]
        cliente = clienteposto.split(" | ")[0]
        posto_trabalho = clienteposto.split(" | ")[1]

        cur.execute(
            "SELECT id FROM cliente WHERE razao_social = %s ", (cliente))
        cliente_id = cur.fetchall()

        cur.execute(
            "SELECT id FROM posto_trabalho WHERE nome_posto = %s ", (posto_trabalho))
        posto_trabalho_id = cur.fetchall()

        cur.execute(
            "SELECT escala FROM posto_trabalho WHERE nome_posto = %s ", (posto_trabalho))
        escala = cur.fetchall()

        cur.execute("INSERT INTO `contrato`(`cliente_id`,`posto_trabalho_id`,`valor`,`escala`,`data_admissao`) Values(%s, %s, %s, %s, %s)",
                    (cliente_id, posto_trabalho_id, valor, escala, data_admissao))
        con.commit()
        return redirect(url_for('contrato'))
    else:
        return render_template('cadastro_contrato.html', cliente=cliente, nome=nome, nivel=nivel)




@app.route('/cadastro_posto_trabalho', methods=['GET', 'POST'])
@login_required
def posto_trabalho():
    con = mysql.connect()
    cur = con.cursor()
    cur.execute(
        "SELECT razao_social FROM cliente"
    )
    cliente = cur.fetchall()
    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()

    if request.method == "POST":
        flash("Dados gravados com sucesso!")
        nome_posto = request.form["nome_posto"]
        escala = request.form["escala"]
        cliente = request.form["cliente"]
        qtd_colaborador = request.form["qtd_colaborador"]
        descricao = request.form["descricao"]

        cur.execute("SELECT id FROM cliente WHERE razao_social = %s", (cliente))
        cliente_id = cur.fetchall()

        cur.execute("INSERT INTO `posto_trabalho`(`nome_posto`,`escala`,`cliente_id`,`qtd_colaborador`,`descricao`) Values(%s, %s, %s, %s, %s)",
                    (nome_posto, escala, cliente_id, qtd_colaborador, descricao))
        con.commit()
        return redirect(url_for('posto_trabalho'))
    else:
        return render_template('/cadastro_posto_trabalho.html', cliente=cliente, nome=nome, nivel=nivel)


@app.route('/cadastro_cliente', methods=['GET', 'POST'])
@login_required
def cadastro_cliente():
    con = mysql.connect()
    cur = con.cursor()
    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()

    if request.method == "POST":
        flash("Dados gravados com sucesso!")
        razao_social = request.form["razao_social"]
        nome_fantasia = request.form["nome_fantasia"]
        cnpj = request.form["cnpj"]
        endereco = request.form["endereco"]
        numero = request.form["numero"]
        bairro = request.form["bairro"]
        cidade = request.form["cidade"]
        estado_uf = request.form["estado_uf"]
        cep = request.form["cep"]
        contato = request.form["contato"]
        email = request.form["email"]
        data_admissao = request.form["data_admissao"]

        cur.execute("INSERT INTO `cliente`(`razao_social`,`nome_fantasia`,`cnpj`,`endereco`,`numero`,`bairro`,`cidade`,`estado_uf`,`cep`,`contato`,`email`,`data_admissao`) Values(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
                    (razao_social, nome_fantasia, cnpj, endereco, numero, bairro,  cidade, estado_uf, cep, contato, email, data_admissao))
        con.commit()
        return redirect(url_for('cadastro_cliente'))
    else:
        return render_template('/cadastro_cliente.html', nome=nome, nivel=nivel)


@app.route('/evento', methods=['GET', 'POST'])
@login_required

def evento():
    con = mysql.connect()
    cur = con.cursor()
    cur.execute(
        "SELECT * FROM evento")
    data = cur.fetchall()
    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()

    if request.method == "POST":
        flash("Eventos gravados com sucesso!")
        nome_evento = request.form["nome_evento"]
        data_evento = request.form["data_evento"]
        descricao = request.form["descricao"]
        cur.execute("INSERT INTO `evento`(nome_evento,data_evento,descricao) Values(%s,%s,%s)",
                    (nome_evento, data_evento, descricao))
        con.commit()

        return redirect(url_for('evento'))
    else:
        return render_template('/evento.html', controle=data, nome=nome, nivel=nivel)



@app.route('/', methods=['GET', 'POST'])
def login():
    msg = ''
    if request.method == "POST":
        username = request.form['username']
        password = request.form['password']
        con = mysql.connect()
        cur = con.cursor()
        
        cur.execute('SELECT * FROM usuarios WHERE username=%s AND password=%s', (username, password))


        account = cur.fetchone()
        variavel=cur.execute('SELECT nivel FROM usuarios WHERE username=%s AND password=%s ',(username, password))
        teste=cur.fetchone()
        
        if account:
            session['logged_in'] = True
            session['username'] = username
            session['nivel'] = teste[0] 
            print(session['nivel'])
            return redirect(url_for('index'))
        
        else:
            msg = 'Login ou senha incorreta!'
    return render_template('login.html', msg=msg)
    

# if request.method =='get':
#     con = mysql.connect()
#     cur = con.cursor()
#     cur.execute(
#             ('SELECT nivel FROM usuarios '))
#     teste = cur.fetchone()
#     if teste:
#         session['logged_in'] = True

#         return redirect(url_for('index_tatico'))
#     else:
#         return render_template('login.html')

@app.route("/logout")
def logout():
    #session.pop('username',None)
    session.pop('logged_in', None)
    return redirect(url_for('login'))


@app.route('/quadro_cliente')
@login_required
def quadro_cliente():
    con = mysql.connect()
    cur = con.cursor()
    cur.execute(
        "SELECT * FROM  cliente order by id")
    quadro_cliente = cur.fetchall()
    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()
        
    return render_template('/quadro_cliente.html', quadro_cliente=quadro_cliente, nome=nome, nivel=nivel)


@app.route('/error')
@login_required

def erro():
    con = mysql.connect()
    cur = con.cursor()
    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()
    return render_template('/error.html', nome=nome, nivel=nivel)


@app.route('/cadastro_usuario', methods=['GET', 'POST'])
@login_required
@login_nivel
def cadastro_usuario():
    con = mysql.connect()
    cur = con.cursor()

    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()

    if request.method == "POST":
        flash("Eventos gravados com sucesso!")
        nome = request.form["nome"]
        username = request.form["username"]
        password = request.form["password"]
        nivel = request.form["nivel"]
        cur.execute("INSERT INTO `usuarios`(nome,username,password,nivel) Values(%s,%s,%s,%s)",
                    (nome, username, password, nivel))
        con.commit()

        return redirect(url_for('cadastro_usuario'))
    else:
        return render_template('/cadastro_usuario.html', nome=nome, nivel=nivel)


@app.route('/quadro_colaborador', methods=['GET'])
@login_required
def quadro_colaborador():
    con = mysql.connect()
    cur = con.cursor()

    cur.execute("SELECT nome_completo,funcao,tipo_cobertura,posto_trabalho.nome_posto,posto_trabalho.escala FROM colaboradores inner join posto_trabalho on colaboradores.posto_trabalho_id=posto_trabalho.id")
    quadro_colaborador = cur.fetchall()

    cur.execute('SELECT nome FROM usuarios')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios')
    nivel = cur.fetchall()

    return render_template('/quadro_colaborador.html', quadro_colaborador=quadro_colaborador, nome=nome, nivel=nivel)


@app.route('/postos_trabalho', methods=['GET'])
@login_required
def postos_trabalho():
    con = mysql.connect()
    cur = con.cursor()
    cur.execute("SELECT  nome_posto,descricao,escala, qtd_colaborador,cliente.nome_fantasia FROM posto_trabalho inner join cliente on posto_trabalho.cliente_id=cliente.id ")
    data = cur.fetchall()
    cur.execute('SELECT nome FROM usuarios ')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios ')
    nivel = cur.fetchall()
    return render_template('/postos_trabalho.html', data=data, nome=nome, nivel=nivel)


@app.route('/quadro_contrato', methods=['GET'])
@login_required
def quadro_contrato():
    con = mysql.connect()
    cur = con.cursor()

    cur.execute("SELECT contrato.id,cliente.razao_social,cliente.cnpj,posto_trabalho.nome_posto,contrato.escala,contrato.valor,contrato.data_admissao FROM contrato inner join cliente on contrato.cliente_id=cliente.id inner join posto_trabalho on contrato.posto_trabalho_id=posto_trabalho.id")
    quadro_contrato = cur.fetchall()

    cur.execute('SELECT nome FROM usuarios')
    nome = cur.fetchall()
    cur.execute('SELECT nivel FROM usuarios')
    nivel = cur.fetchall()

    return render_template('/quadro_contrato.html', quadro_contrato=quadro_contrato, nome=nome, nivel=nivel)


@app.route('/download')
def download_presenca():
    try:
        mesaberto = datetime.today().strftime('%m')
        con = mysql.connect()
        cur = con.cursor(pymysql.cursors.DictCursor)
        cur.execute( "SELECT * FROM `%s` order by posto_trabalho, tipo_cobertura ,registro",mesaberto)
        result = cur.fetchall()
        
        from fpdf import FPDF
        class PDF(FPDF): #Header e Footer adicionados automaticametne após o pdf.add_page
            #Cabeçalho
            def header(self):
                genDateTime = "" + datetime.now().strftime('%d/%m/%Y %H:%M:%S') #Data e hora atual
                self.set_y(10)
                self.set_font('Arial', 'I', 8)
                self.cell(0, 5, genDateTime, ln=1, align='R')
                
                self.set_font('Helvetica', 'B', 20)
                self.set_text_color(0)
                self.cell(0, 5, 'Controle de Presença', ln=2, align='C') #Título
                self.ln(20)

            #Rodapé 
            def footer(self):
                self.set_y(-15)
                self.set_font('Arial', 'I', 8)
                self.cell(0, 10, 'Página ' + str(self.page_no()) +
                          '/{nb}', 0, 0, 'R')  # numero da página no rodapé

        pdf = PDF('P', 'mm', 'A4')
        genDateTime = "" + datetime.now().strftime('%d/%m/%Y')
        
        pdf.alias_nb_pages()
        pdf.add_page(['L'])#Landscape - Paisagem
        
        pdf.set_left_margin(15)
        pdf.set_right_margin(15)

        pdf.set_font('Helvetica', 'B', 12.)
        pdf.set_fill_color(45, 67, 100)
        pdf.set_text_color(255, 255, 255)

        pdf.cell(32.5, 5, "Registro", border='TB', fill=True,align='C')
        pdf.cell(60, 5, "Colaborador", border='TB', fill=True,align='C')
        pdf.cell(40, 5, "Postos de Trabalho", border='TB', fill=True,align='C')
        pdf.cell(25, 5, "Função", border='TB', fill=True,align='C')
        pdf.cell(30, 5, "Cobertura", border='TB', fill=True,align='C')

        pdf.ln(2)

        pdf.set_font('Helvetica', '', 12)
        pdf.set_text_color(0)
        pdf.set_left_margin(15)
        pdf.set_right_margin(15)
        for row in result:
            pdf.cell(32.5,5, str(row['registro']), border=0,align='C')
            pdf.cell(60, 5, str(row['colaborador']), border=0,align='C')
            pdf.cell(40, 5, str(row['posto_trabalho']), border=0,align='C')
            pdf.cell(40, 5, str(row['funcao']), border=0,align='C')
            pdf.cell(25, 5, str(row['tipo_cobertura']), border=0,align='C')
            pdf.ln(2)
        pdf.cell(0,0,border=1)
        return Response(pdf.output(dest='S').encode('latin-1'), mimetype='application/pdf', headers={'Content-Disposition': 'attachment;filename=Contratos - ' + genDateTime +'.pdf'})

    except Exception as e:
        print(e)

@app.route('/download/pdf')
def download_by_id():
    try:
        con = mysql.connect()
        cur = con.cursor(pymysql.cursors.DictCursor)
        id = request.args.get('id')
        cur.execute("SELECT contrato.id,cliente.razao_social,cliente.cnpj,cliente.nome_fantasia, cliente.endereco,cliente.numero,cliente.bairro,cliente.cidade,cliente.estado_uf,cliente.cep,cliente.contato,cliente.email,cliente.data_admissao,contrato.valor,posto_trabalho.nome_posto,posto_trabalho.descricao,contrato.escala,posto_trabalho.qtd_colaborador FROM contrato inner join cliente on contrato.cliente_id=cliente.id inner join posto_trabalho on contrato.posto_trabalho_id=posto_trabalho.id WHERE contrato.id = %s", (id))
        result = cur.fetchall()
        class PDF(FPDF):

            def header(self):
                genDateTime = "" + datetime.now().strftime('%d/%m/%Y %H:%M:%S')
                year = "" + datetime.now().strftime('%Y')
                
                self.set_y(10)
                self.set_font('Helvetica', 'I', 8)
                self.cell(0, 5, genDateTime, ln=1, align='R')

                self.set_font('Helvetica', 'B', 20)
                self.set_text_color(0)
                self.cell(0, 5, txt='Contrato Nº: ' + id, ln=2, align='C')
                self.ln(20)

                # self.ln(20)
            def footer(self):
                self.set_y(-15)
                self.set_font('Helvetica', 'I', 8)
                self.cell(0, 10, 'Página ' + str(self.page_no()) +
                          '/{nb}', 0, 0, 'R')  # numero da página no rodapé

        pdf = PDF('P', 'mm', 'A4')
        pdf.alias_nb_pages()
        pdf.add_page(['P'])
        year = "" + datetime.now().strftime('%Y')
        pdf.set_title('Contrato Nº: '+id)
        pdf.set_fill_color(45, 67, 100)
        pdf.set_left_margin(15)
        pdf.set_right_margin(15)
        pdf.set_font('Helvetica', '', 12)
        pdf.set_text_color(0)

        for row in result:
            pdf.set_font('Helvetica', 'B', 12.)
            pdf.set_text_color(255, 255, 255)
            pdf.cell(90, 10, "Razão Social", border=1,fill=True)
            pdf.multi_cell(90, 10, "Nome Fantasia", border=1,fill=True)

            pdf.set_text_color(0)
            pdf.cell(90, 10, str(row['razao_social']), border=1)
            pdf.multi_cell(90, 10, str(row['nome_fantasia']), border=1)

            pdf.set_text_color(255, 255, 255)
            pdf.multi_cell(0, 10, "CNPJ", border=1,fill=True)
            pdf.set_text_color(0)
            pdf.multi_cell(0, 10, str(row['cnpj']), border=1)
            
            pdf.set_text_color(255, 255, 255)
            pdf.cell(90, 10, "Endereço", border=1,fill=True)
            pdf.cell(30, 10, "Nº", border=1,fill=True)
            pdf.multi_cell(60, 10, "Bairro", border=1,fill=True)

            pdf.set_text_color(0)
            pdf.cell(90, 10, str(row['endereco']), border=1)
            pdf.cell(30, 10, str(row['numero']), border=1)
            pdf.multi_cell(60, 10, str(row['bairro']), border=1)


            pdf.set_text_color(255, 255, 255)
            pdf.cell(90, 10, "Cidade", border=1,fill=True)
            pdf.cell(30, 10, "Estado", border=1,fill=True)
            pdf.multi_cell(60, 10, "CEP", border=1,fill=True)

            pdf.set_text_color(0)
            pdf.cell(90, 10, str(row['cidade']), border=1)
            pdf.cell(30, 10, str(row['estado_uf']), border=1)
            pdf.multi_cell(60, 10, str(row['cep']), border=1)

            pdf.set_text_color(255, 255, 255)
            pdf.cell(90, 10, "Contato", border=1,fill=True)
            pdf.multi_cell(90, 10, "E-mail", border=1,fill=True)

            pdf.set_text_color(0)
            pdf.cell(90, 10, str(row['contato']), border=1)
            pdf.multi_cell(90, 10, str(row['email']), border=1)

            pdf.set_text_color(255, 255, 255)
            pdf.multi_cell(0, 10, "Data de Admissão", border=1,fill=True)
            pdf.set_text_color(0)
            pdf.multi_cell(0, 10, str(row['data_admissao']), border=1)
            pdf.ln(10)

            pdf.set_text_color(255, 255, 255)
            pdf.cell(40, 10, "Nº do Contrato", border=1,fill=True)
            pdf.cell(30, 10, "Valor", border=1,fill=True)
            pdf.cell(30, 10, "Escala", border=1,fill=True)
            pdf.multi_cell(80, 10, "Quantidade de Colaboradores", border=1,fill=True)
            pdf.set_text_color(0)
            pdf.cell(40,10, str(row['id']), border=1)
            pdf.cell(30, 10, str(row['valor']), border=1)
            pdf.cell(30, 10, str(row['escala']), border=1)
            pdf.multi_cell(80, 10, str(row['qtd_colaborador']), border=1)

            pdf.set_text_color(255, 255, 255)
            pdf.cell(70, 10, "Posto de Trabalho", border=1,fill=True)
            pdf.multi_cell(110, 10, "Descrição do Posto", border=1,fill=True)
            pdf.set_text_color(0)
            pdf.cell(70, 10, str(row['nome_posto']), border=1)
            pdf.multi_cell(110, 10, str(row['descricao']), border=1)
                       
            pdf.ln(10)

        pdf.cell(0,0,border=0)

        return Response(pdf.output(dest='S').encode('latin-1'), mimetype='application/pdf', headers={'Content-Disposition': 'attachment;filename=Contrato Nº '+id+'.pdf'})

    except Exception as e:
        print(e)

if __name__ == "__main__":
    app.run(debug=True)
