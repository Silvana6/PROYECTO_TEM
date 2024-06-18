document.addEventListener('DOMContentLoaded', () => {
    // Añade el listener al botón de búsqueda
    document.querySelector('.search-button').addEventListener('click', highlightText);

    // Añade el listener al campo de entrada
    const searchInput = document.querySelector('.search-input');
    searchInput.addEventListener('input', () => {
        if (searchInput.value.trim() === '') {
            removeHighlights();
        }
    });
});

function highlightText(event) {
    event.preventDefault(); // Prevenir la acción por defecto del enlace

    // Elimina los resaltados previos
    removeHighlights();

    // Obtiene el texto de búsqueda
    const searchText = document.querySelector('.search-input').value.trim();
    if (!searchText) return;

    // Selecciona el contenido en el cual buscar
    const content = document.getElementById('contenido');
    if (!content) {
        console.error("El elemento con id 'contenido' no se encuentra en la página.");
        return;
    }

    const textNodes = getTextNodes(content);

    textNodes.forEach(node => {
        const parentNode = node.parentNode;
        const regex = new RegExp(`(${searchText})`, 'gi');
        const newNodeHtml = node.nodeValue.replace(regex, '<span class="highlight">$1</span>');
        const newNode = document.createElement('span');
        newNode.innerHTML = newNodeHtml;
        parentNode.replaceChild(newNode, node);
    });
}

function getTextNodes(node) {
    let textNodes = [];
    if (node.nodeType === Node.TEXT_NODE) {
        textNodes.push(node);
    } else {
        node.childNodes.forEach(child => {
            textNodes = textNodes.concat(getTextNodes(child));
        });
    }
    return textNodes;
}

function removeHighlights() {
    const highlights = document.querySelectorAll('.highlight');
    highlights.forEach(span => {
        const parent = span.parentNode;
        while (span.firstChild) {
            parent.insertBefore(span.firstChild, span);
        }
        parent.removeChild(span);
        parent.normalize();
    });
}
