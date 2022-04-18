const dropdown =  document.querySelectorAll('.dropdown-btn');

let posicaoSeta = true;


dropdown.forEach(button=>{
    console.log(button.id)

    const selectImg = button.firstElementChild;
    if(button.id === 'select'){
        button.classList.add("active");
        selectImg.src = '../static/img/seta-menuAberto.svg'
        const dropdownContent = button.nextElementSibling;
        dropdownContent.style.display = "block";
    }
    button.addEventListener("click", function(event) {
        const menu = event.target;
        const menuImg = menu.firstElementChild;

        if(!menu.id){
            if(posicaoSeta){
                menu.classList.add("active");
                menuImg.src = '../static/img/seta-menuAberto.svg'
                posicaoSeta = false;
            }else{
                menu.classList.remove("active");
                menuImg.src = '../static/img/seta-menuFechado.svg'
                posicaoSeta = true;
            }
            const dropdownContent = menu.nextElementSibling;
            if(dropdownContent.style.display === "block") {
                dropdownContent.style.display = "none";
            }else {
                dropdownContent.style.display = "block";
            }
        }
    });
})

