<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
    if (session.getAttribute("Login") != "OK") {
        response.sendRedirect("Login.jsp");
    }
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte</title>
        <link rel="stylesheet" href="css/report.css">
        <link rel="stylesheet"  href="css/main.css">
    </head>
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
                <a class="link active" href="Report.jsp">
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
            <h1>Reporte</h1>
        </div>

        <div class="container"><!--ORDENAR POR OBS-TITULO-FECHA-ESTADO-->
            <table>
                <thead>
                    <tr>
                        <th>#</th> 
                        <th>Título de Tarea</th>
                        <th>Estado</th>
                        <th>Fecha límite</th>
                        <th># Notifi.</th>
                        <th>Recibidos</th>
                        <th>Futuros</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td><!--NO ID-->
                        <td class="c-int">Tarea 1: Proyecto Emergentes</td>
                        <td>INCOMPLETO</td>
                        <td>20-06-2024</td>
                        <td>7</td>
                        <td>5</td>
                        <td>2</td>
                    </tr>
                    <c:forEach var="item" items="${reporte}">
                        <tr>
                            <td>${item.id}</td><!--NO ID-->
                            <td class="c-int">${item.titulo}</td>
                            <td>${item.estado}</td>
                            <td>${item.f_lim}</td>
                            <td>${item.notif}</td>
                            <td>${item.recibido}</td>
                            <td>${item.futuro}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
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
</html>
