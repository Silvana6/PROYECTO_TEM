<%-- 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Configuración</title>
        <link rel="stylesheet"  href="css/settings.css">
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
                    <a class="link active" href="Settings.jsp">
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
            <h1>Configuración</h1>
        </div>

        <div class="container">
            <div class="div-stt">
                <h2>Personalizar apariencia</h2>
                <label>Temas</label>
                <div class="themes">
                    <div class="theme-c" data-color="#ffffff" style="background-color: #ffffff;"></div><!--BLANCO-->
                    <div class="theme-c" data-color="#cde9da" style="background-color: #cde9da;"></div><!--VERDE-->
                    <div class="theme-c" data-color="#ffe3e7" style="background-color: #ffe3e7;"></div><!--ROSA-->
                    <div class="theme-c" data-color="#fae4c7" style="background-color: #fae4c7;"></div><!--NARANJA-->
                    <div class="theme-c" data-color="#ecefff" style="background-color: #ece7ff;"></div><!--MORADO-->
                    <div class="theme-c" data-color="#a7a7a7" style="background-color: #a7a7a7;"></div><!--GRIS-->
                </div>
            </div>

            <div class="div-stt">
                <h2>Notificaciones</h2>
                <label><input type="checkbox" />    ¿Permitir notificaciones?</label>
            </div>

            <div>
                <h2>Seguridad</h2>
                <label>Perfil</label>
                <div class="links">
                    <a href="Profile.jsp">¿Editar perfil?</a><br>
                    <a href="Changepass.jsp">¿Desea cambiar su contraseña?</a>
                </div>
            </div>
        </div>

        <div class="btns-pom-new">
            <button class="pomodoro-btn" onclick="redireccionar()">POMODORO</button>

            <a class="create-btn" href="Tasks.jsp">
                <img src="icons/create.svg" alt="">
            </a>
        </div>
    </body>

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
    
    <script src="settings.js"></script>
</html>
