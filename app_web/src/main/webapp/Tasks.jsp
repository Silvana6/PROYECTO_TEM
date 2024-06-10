<%-- 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Tarea</title>
        <link rel="stylesheet"  href="css/tasks.css">
        <link rel="stylesheet"  href="css/main.css">
    </head>

    <body>
        <nav>
            <div class="sidebar-header">
                <a class="logo-wrapper" href="Admins.jsp">
                    <img src="images/logo_login.png" alt="Logo">
                    <h2 class="hidden">Name APP</h2>
                </a>
                <button class="toggle-btn">
                    <img src="icons/expand.svg" alt="expand button">
                </button>
            </div>

            <div class="sidebar-links">
                <a class="link" href="Main.jsp">
                    <img src="icons/home.svg" alt="I">
                    <span class="hidden">Inicio</span>
                </a>
                <a class="link" href="Favorites.jsp">
                    <img src="icons/favorites.svg" alt="F">
                    <span class="hidden">Favoritos</span>
                </a>
                <a class="link" href="Calendar.jsp">
                    <img src="icons/calendar.svg" alt="C">
                    <span class="hidden">Calendario</span>
                </a>
                </li>
                <a class="link" href="Report.jsp">
                    <img src="icons/tasks.svg" alt="R">
                    <span class="hidden">Reporte</span>
                </a>
            </div>

            <div class="sidebar-bottom">
                <div class="sidebar-links">
                    <a class="link" href="Settings.jsp">
                        <img src="icons/settings.svg" alt="">
                        <span class="hidden">Configuración</span>
                    </a>
                </div>

                <div class="user-profile">
                    <div class="user-avatar">
                        <a href="Profile.jsp">
                            <img src="images/usuario.jpeg" alt="user-profile">
                        </a>
                    </div>
                    <div class="user-details hidden">
                        <p class="username">Usuario</p>
                        <p class="user-email">email.com</p>
                    </div>
                </div>
            </div>
        </nav>

        <div class="title-t">
            <h1>Agregar Tarea</h1>
        </div>
        
        <div class="container">

            <div class="new-form">
                <form action=""><!-- ENTRADA DE TEXTO OBLIGATORIA -->
                    <div class="title-detail">
                        <label>Título</label><br>
                        <input type="text" placeholder="Añade un título a la tarea ..." />
                    </div>

                    <div class="title-detail">
                        <label>Descripción</label><br>
                        <textarea rows="10" cols="50" placeholder="Añade una descripción ..."></textarea>
                    </div>

                    <div class="date">
                        <label>Fecha límite (opcional): </label>
                        <input type="date" />
                    </div>

                    <div class="title-detail">
                        <label>Nota (opcional)</label><br>
                        <textarea rows="7" cols="50" placeholder="Añade una nota ..."></textarea>
                    </div>

                    <div class="notification-active">
                        <input type="checkbox" onclick="" />
                        <label> Añadir recordatorio</label>
                    </div>

                    <div class="disabled-section">
                        <div>
                            <label>Veces a repetir: </label>
                            <input type="number" />
                        </div>

                        <div class="sect-esp">
                            <label>Cada cuanto: </label>
                            <input type="number" />
                            <select>
                                <option value="dias">DÍAS</option>
                                <option value="dias">SEMANAS</option>
                                <option value="dias">MESES</option>
                                <option value="dias">AÑOS</option>
                            </select>
                        </div>

                        <div>
                            <label>Hora: </label>
                            <input type="time" />
                        </div>

                        <div>
                            <label>Fecha de inicio: </label>
                            <input type="date" />
                        </div>

                        <div>
                            <label>Fecha final: </label>
                            <input type="date" />
                        </div>
                    </div>

                    <div class="new-btn">
                        <button type="submit">CREAR</button>
                    </div>
                </form>
            </div>
        </div>
        
        <div class="btns-pom-new">
            <button class="pomodoro-btn" onclick="redireccionar()">POMODORO</button>

            <a class="create-btn" href="Tasks.jsp">
                <img src="icons/create.svg" alt="">
            </a>
        </div>
    </body>
    
    <script src="js/tasks.js"></script>
    <!--ACTIVA LA BARRA LATERAL IZQUIERDA-->
    <script>
        const sidebarBtn = document.querySelector(".toggle-btn");
        const sidebar = document.querySelector("aside");

        sidebarBtn.addEventListener("click", () => {
            document.body.classList.toggle("active");
        });
    </script>
    
    <script>
        function redireccionar() {
            window.location.href = "Pomodoro.jsp";
        }
    </script>
</html>
