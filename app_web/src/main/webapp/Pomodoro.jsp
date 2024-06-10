<%-- 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Pomodoro</title>
        <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
        <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
        <link rel="stylesheet" href="pomodoro.css">
        <link rel="stylesheet"  href="css/main.css">
    </head>
    
    <style>
        body {
            background-color: #22223b;
        }
    </style>
    
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
        
        <div id="app" >
            <audio src="sounds/end.mp3" ref="end" type="audio/mpeg"></audio>
            <audio src="sounds/start.mp3" ref="start" type="audio/mpeg"></audio>
            <audio src="sounds/allcompleted.mp3" ref="completed" type="audio/mpeg"></audio>
            <section v-if="display">
                <div class="space"></div>
                <div class="header has-text-centered">
                    <h1 class="title has-text-light is-size-4 has-text-weight-light" style="letter-spacing: 0.15rem;">POMODORO</h1>
                </div>
                <div class="minispace"></div>
                <div class="minispace"></div>


                <div class="timer">
                    <div class="circle-stroke" v-bind:class="{pulse: isPlaying}">
                        <div class="inner-circle has-text-light">{{formatDisplay(displayTime)}}</div>
                    </div>

                    <div class="minicircles-container">
                        <div class="minicircles" :class="{completed: isCompleted(0)}"></div>
                        <div class="minicircles" :class="{completed: isCompleted(1)}"></div>
                        <div class="minicircles" :class="{completed: isCompleted(2)}"></div>
                        <div class="minicircles" :class="{completed: isCompleted(3)}"></div>
                    </div>

                    <div class="space"></div>     
                    <div class="buttons-container">
                        <div class="btn btn-small background-primary has-text-dark" @click="resetTimer">
                            <i class="fas fa-redo"></i>
                        </div>
                        <div class="btn btn-big background-primary has-text-dark" @click="startTimer()">
                            <span v-show="!isPlaying">
                                <i class="fas fa-2x fa-play" style="margin: 0 3px;"></i>
                            </span>
                            <span v-show="isPlaying">
                                <i class="fas fa-2x fa-pause"></i>
                            </span>
                        </div>
                        <div class="btn btn-small background-primary has-text-dark" @click="changeDisplay()">
                            <i class="fas fa-cog" ></i>
                        </div>
                    </div>
                </div>
            </section>

            <section v-if="!display" class="section2">
                <div class="header has-text-centered">
                    <h2 class="title has-text-light is-size-4 has-text-weight-light" style="letter-spacing: 0.15rem;">Ajustes</h2>
                </div>
                <div class="space"></div>
                <div class="slider-container" style="text-align: center;">
                    <h4 style="text-align: center;">Trabajo</h4>
                    <h4 style="text-align: center;">{{st_worktime}} </h4>
                    <input v-model="st_worktime" class="slider" type="range" min="1" max="60" value="25">           
                </div>

                <div class="slider-container" style="text-align: center;">
                    <h4 style="text-align: center;">Descanso corto</h4>
                    <h4 style="text-align: center;">{{st_shortbreak}} min</h4>
                    <input v-model="st_shortbreak" class="slider" type="range" min="1" max="60" value="5">           
                </div>

                <div class="slider-container" style="text-align: center;">
                    <h4 style="text-align: center;">Descanso largo</h4>
                    <h4 style="text-align: center;">{{st_longbreak}} min</h4>
                    <input v-model="st_longbreak" class="slider" type="range" min="1" max="60" value="25">           
                </div>

                <div class="buttons-container2">
                    <span class="button-cancel" @click="cancelChanges()">Cancelar</span>
                    <span class="button-apply" @click="applyChanges()">Aplicar</span>
                </div>
            </section>
        </div>
        
        <div class="btns-pom-new">
            <button class="pomodoro-btn" href="Pomodoro.jsp">POMODORO</button>

            <a class="create-btn" href="Tasks.jsp">
                <img src="icons/create.svg" alt="">
            </a>
        </div>
        <script src="pomodoro.js"></script>
    </body>
    
    <script>
        const sidebarBtn = document.querySelector(".toggle-btn");
        const sidebar = document.querySelector("aside");

        sidebarBtn.addEventListener("click", () => {
            document.body.classList.toggle("active");
        });
    </script>
</html>