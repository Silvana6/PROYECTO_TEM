<%-- 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link rel="stylesheet"  href="css/main.css">
        <link rel="stylesheet"  href="css/viewmain.css">
    </head>

    <style>
        .title {
            margin-left: 200px;
            margin-top: 8px;
            margin-bottom: 20px;
            color: #4a4e69;
            font-size: 25px;
        }
    </style>

    <body>
        <header class="header">
            <div class="header-content">
                <ul class="header-menu">
                    <li>
                        <div class="search">
                            <input class="search-input" type="text" name="" placeholder="Buscar...">
                            <a href="#" class="icon-search">
                                <img src="icons/search.svg" alt="B"">
                            </a>
                        </div>
                    </li>
                    <li>
                        <button type="button" aria-label="Notify" class="header-button">
                            <img src="icons/notifications.svg" alt="N">
                        </button>
                    </li>
                    <li>
                        <button type="button" aria-label="Sort" class="header-button">
                            <img src="icons/sortby.svg" alt="S">
                        </button>
                    </li>
                </ul>
            </div>
        </header>

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
                <a class="link active" href="Main.jsp">
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

        <div class="title">
            <h1>Bienvenid@ :)</h1>
        </div>

        <div class="task-container">
            <div class="task-box" id="task-1">
                <div class="task">
                    <h3>Tarea 1</h3><!-- Titulo -->
                    <p class="describe">Axxxxxxxxxx xxxxx xxxxxx xxx xxxxxxx xxxxxxx xxxxxxxxxxxxx xxxxx xxxxxx xxxxxxxxxxxxx xxx xxxxxxxxx xxxxxxxxx xxxxxx xxxxxxxx xxxx xxxxx xxxxxxxx xxsbcdef ghi jklmnop qr stuv wxyz, abcd efghij kl mnopqrst uv wx yzabcd.</p><!-- Tarea -->
                    <p class="date">12/07/2024</p><!-- Fecha limite -->
                </div>
                <div class="icons">
                    <i class="note-icon"><img src="icons/note.svg" alt="📝"/>️</i>
                    <i class="complete-icon"><img src="icons/complete.svg" alt="✔"/>️</i>
                    <i class="favorite-icon"><img src="icons/favorites.svg" alt="⭐"/>️</i>
                    <i class="edit-icon"><img src="icons/edit.svg" alt="✏"/>️️</i>
                    <i class="delete-icon"><img src="icons/delete.svg" alt="🗑"/>️️</i><!-- onclick = "return(confirm('¿Esta segur@ de eliminar esta tarea?'))" -->
                </div>
            </div>
            <div class="task-box" id="task-2">
                <div class="task">
                    <h3>Tarea 2</h3><!-- Titulo -->
                    <p class="describe">Abcdef ghi jklmnop qr stuv wxyz, abcd efghij kl mnopqrst uv wx yzabcd.</p><!-- Tarea -->
                    <p class="date">12/07/2024</p><!-- Fecha limite -->
                </div>
                <div class="icons">
                    <i class="note-icon"><img src="icons/note.svg" alt="📝"/>️</i>
                    <i class="complete-icon"><img src="icons/complete.svg" alt="✔"/>️</i>
                    <i class="favorite-icon"><img src="icons/favorites.svg" alt="⭐"/>️</i>
                    <i class="edit-icon"><img src="icons/edit.svg" alt="✏"/>️️</i>
                    <i class="delete-icon"><img src="icons/delete.svg" alt="🗑"/>️️</i>
                </div>
            </div>
            <!-- Más tareas pueden ser añadidas aquí -->
        </div>
        
        <div class="task-container-complete">
            <div class="task-box" id="task-3">
                <div class="task">
                    <h3>Tarea 3</h3><!-- Titulo -->
                    <p class="decribe2">Abcdef ghi jklmnop qr stuv wxyz, abcd efghij kl mnopqrst uv wx yzabcd.</p><!-- Tarea -->
                </div>
                <div class="icons">
                    <i class="delete-icon"><img src="icons/delete.svg" alt="🗑"/>️️</i>
                </div>
            </div>
            <!-- Más tareas pueden ser añadidas aquí -->
        </div>

        <div class="btns-pom-new">
            <button class="pomodoro-btn" onclick="redireccionar()">POMODORO</button>

            <a class="create-btn" href="Tasks.jsp">
                <img src="icons/create.svg" alt="">
            </a>
        </div>
    </body>

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
    <!--
        <script type="module">
            import { Application } from '@splinetool/runtime';
            const canvas = document.getElementById('canvas3d');
            const app = new Application(canvas);
            app.load('https://prod.spline.design/nNthtPmaCbO62jKp/scene.splinecode');
        </script><link rel="stylesheet" href="./style.css">-->
</html>
