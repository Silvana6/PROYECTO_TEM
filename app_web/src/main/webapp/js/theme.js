document.addEventListener('DOMContentLoaded', () => {
    const themes = document.querySelectorAll('.theme-c');
    const savedColor = localStorage.getItem('backgroundColor');

    // Si hay un color guardado, aplícalo al cargar la página
    if (savedColor) {
        document.body.style.setProperty('--background-color', savedColor);
    }

    themes.forEach(theme => {
        theme.addEventListener('click', (e) => {
            const color = e.target.getAttribute('data-color');
            document.body.style.setProperty('--background-color', color);
            // Guarda el color seleccionado en localStorage
            localStorage.setItem('backgroundColor', color);
        });
    });
});