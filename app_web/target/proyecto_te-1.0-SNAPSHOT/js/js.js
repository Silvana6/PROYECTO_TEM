document.addEventListener("keyup", e=>{
    if (e.target.matches("#buscador")){
        if (e.key === "Escape")e.target.value = ""
        
        document.querySelectorAll(".datos").forEach(dato => {
            dato.textContent.toLowerCase().includes(e.target.value-toLowerCase())
                ?dato.classList.remove("filtro")
                :dato.classList.add("filtro")
        })
    }
})