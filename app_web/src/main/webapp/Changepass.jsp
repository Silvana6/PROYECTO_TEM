<%-- 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cambiar contraseña</title>

        <link rel="stylesheet" href="css/changepass.css"/>
        <link rel="stylesheet" href="css/main.css">

        <script>
            function goBack() {
                window.history.back();
            }
        </script>
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
            <h1>Cambiar contraseña</h1>
        </div>
        
        <div class="wrapper">
            <div class="cpass-box">
                <form action="">
                    <div class="input-box">
                        <span class="icon">
                            <img src="icons/pass.svg" alt="pass">
                        </span>
                        <input type="password" required />
                        <label>CONTRASEÑA ACTUAL: </label>
                    </div>

                    <div class="input-box">
                        <span class="icon">
                            <img src="icons/pass.svg" alt="pass">
                        </span>
                        <input type="password" required />
                        <label>CONTRASEÑA NUEVA: </label>
                    </div>

                    <div class="input-box">
                        <span class="icon">
                            <img src="icons/pass.svg" alt="pass">
                        </span>
                        <input type="password" required />
                        <label>REPETIR CONTRASEÑA: </label>
                    </div>

                    <div class="cpass-btn">
                        <button type="submit" class="btn-ok">CONFIRMAR CAMBIO</button>
                        <button class="btn-cancel" onclick="goBack()">CANCELAR</button>
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
