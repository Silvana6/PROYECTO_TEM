<%-- 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
        <link rel="stylesheet" href="css/profile.css">
        <link rel="stylesheet" href="css/main.css">
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
            <h1>Perfil de Usuario</h1>
        </div>
        
        <div class="container">
            <div class="wrapper">
                <div class="profile-box">
                    <form action="">
                        <div class="input-box">
                            <span class="icon">
                                <img src="icons/user.svg" alt="user">
                            </span>
                            <label>USUARIO: </label>
                            <p>USUARIO ADMIN</p>
                            
                        </div>

                        <div class="input-box">
                            <span class="icon">
                                <img src="icons/name.svg" alt="user">
                            </span>
                            <label>NOMBRE: </label>
                            <p>USUARIO 1</p>
                        </div>

                        <div class="input-box">
                            <span class="icon">
                                <img src="icons/mail.svg" alt="user">
                            </span>
                            <label>CORREO ELECTRÓNICO: </label>
                            <p>email.com</p>
                        </div>
                        
                        <div class="links">
                            <a href="Changepass.jsp">¿Desea cambiar su contraseña?</a>
                        </div>

                        <div class="edit-btn">
                            <button type="submit">EDITAR</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="image-container">
                <img src="images/usuario.jpeg" alt="user" />
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
