const windowBackground2 = document.getElementById('window-background2'),
        windowContainer2 = document.getElementById('window-container2'),
      //openButton = document.getElementById('open-modal2'),
        openButtons2 = document.querySelectorAll('.open-modalD'),
        closeButton2 = document.getElementById('btn-close2');

//openButton.addEventListener('click', () => windowBackground.style.display = 'flex')
openButtons2.forEach(button => {
    button.addEventListener('click', () => {
        windowBackground2.style.display = 'flex';
        // Aquí puedes agregar código para actualizar el contenido del modal según la tarea que se ha clickeado
    });
});

const closeWindow2 = () => {
    windowContainer2.classList.add('close2')
    setTimeout(() => {
        windowContainer2.classList.remove('close2')
        windowBackground2.style.display = 'none'
    }, 1000);
}

closeButton2.addEventListener('click', () => closeWindow2())

window.addEventListener('click', e => e.target == windowBackground2 && closeWindow2());