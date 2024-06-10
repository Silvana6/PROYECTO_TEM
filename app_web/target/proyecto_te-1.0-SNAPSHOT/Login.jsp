<%

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
        <link rel="stylesheet"  href="css/login.css">
    </head>

    <body>
        <h1>INICIO DE SESIÓN</h1>

        <div class="container">
            <div class="image-container">
                <img src="images/logo_login.png" alt="logo_app" />
            </div>

            <div class="wrapper">
                <div class="login-box">
                    <form action="">
                        
                        <div class="input-box">
                            <span class="icon">
                                <ion-icon name="mail"></ion-icon>
                            </span>
                            <input type="text" required />
                            <label>USUARIO: </label>
                        </div>

                        <div class="input-box">
                            <span class="icon">
                                <ion-icon name="lock-closed"></ion-icon>
                            </span>
                            <input type="password" required />
                            <label>CONTRASEÑA: </label>
                        </div>
                        
                        <div class="remember-forgot">
                            <label><input type="checkbox" /> Guardar contraseña</label>
                        </div>
                        
                        <div class="login-btn">
                            <button type="submit">INICIAR SESION</button>
                        </div>

                        <div class="sign-link">
                            <p>
                                ¿No está registrado? - 
                                <a href="SignUp.jsp">Registrarse</a>
                            </p>
                        </div>
                        
                        <div class="forgot-pass">
                            <a href="Seguridad.jsp">¿Olvidó su contraseña?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    <script src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    </body>
</html>
