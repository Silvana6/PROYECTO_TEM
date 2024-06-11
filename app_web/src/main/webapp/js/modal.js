const windowBackground = document.getElementById('window-background'),
        windowContainer = document.getElementById('window-container'),
      //openButton = document.getElementById('open-modal'),
        openButtons = document.querySelectorAll('.open-modal'),
        closeButton = document.getElementById('btn-close');

//openButton.addEventListener('click', () => windowBackground.style.display = 'flex')
openButtons.forEach(button => {
    button.addEventListener('click', () => {
        windowBackground.style.display = 'flex';
        // Aquí puedes agregar código para actualizar el contenido del modal según la tarea que se ha clickeado
    });
});

const closeWindow = () => {
    windowContainer.classList.add('close')
    setTimeout(() => {
        windowContainer.classList.remove('close')
        windowBackground.style.display = 'none'
    }, 1000);
}

closeButton.addEventListener('click', () => closeWindow())

window.addEventListener('click', e => e.target == windowBackground && closeWindow());
