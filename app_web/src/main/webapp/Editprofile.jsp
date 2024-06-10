<%-- 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Perfil</title>
        <link rel="stylesheet"  href="css/eprofile.css">
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
            <h1>Editar Perfil de Usuario</h1>
        </div>

        <div class="container">
            <div class="wrapper">
                <div class="profile-box">
                    <form action="">
                        <div class="input-box">
                            <span class="icon">
                                <img src="icons/user.svg" alt="user">
                            </span>
                            <input type="text" required />
                            <label>USUARIO: </label>
                        </div>

                        <div class="input-box">
                            <span class="icon">
                                <img src="icons/name.svg" alt="user">
                            </span>
                            <input type="text" required />
                            <label>NOMBRE: </label>
                        </div>

                        <div class="input-box">
                            <span class="icon">
                                <img src="icons/mail.svg" alt="user">
                            </span>
                            <input type="email" required />
                            <label>CORREO ELECTRÓNICO: </label>
                        </div>
                        
                        <div class="links">
                            <a href="Changepass.jsp">¿Desea cambiar su contraseña?</a><!--EMERGENTE-->
                        </div>

                        <div class="save-btn">
                            <button type="submit">GUARDAR</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="image-container">
                <img src="images/usuario.jpeg" alt="user-profile" /><!--OPCION DE CAMBIAR FOTO DE PERFIL-->
                <label for="fileInput" class="file-upload-icon">
                    <img id="mainImage" src="icons/edit.svg" alt="c-img"/>
                </label>
                <input type="file" id="fileInput" accept="image/*" style="display: none;">
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

    <script src="profile.js"></script>
</html>
