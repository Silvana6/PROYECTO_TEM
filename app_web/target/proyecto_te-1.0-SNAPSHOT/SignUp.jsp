<%-- 

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
        <link rel="stylesheet"  href="css/signup.css">
    </head>

    <body>
        <h1>REGISTRARSE</h1>
        
        <div class="container">
            <div class="wrapper">
                <div class="signup-box">
                    <form action="">
                        
                        <div class="input-box">
                            <span class="icon">
                                <ion-icon name="person"></ion-icon>
                            </span>
                            <input type="text" required />
                            <label>USUARIO: </label>
                        </div>
                        
                        <div class="input-box">
                            <span class="icon">
                                <ion-icon name="person"></ion-icon>
                            </span>
                            <input type="text" required />
                            <label>NOMBRE: </label>
                        </div>
                        
                        <div class="input-box">
                            <span class="icon">
                                <ion-icon name="mail"></ion-icon>
                            </span>
                            <input type="email" required />
                            <label>CORREO ELECTRÓNICO: </label>
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
                        
                        <div class="signup-btn">
                            <button type="submit">REGISTRARSE</button>
                        </div>
                    </form>
                </div>
            </div>
            
            <div class="image-container">
                <img src="images/usuario.jpeg" alt="user-profile" />
                <label for="fileInput" class="file-upload-icon">
                    <img id="mainImage" src="icons/edit.svg" alt="c-img"/>
                </label>
                <input type="file" id="fileInput" accept="image/*" style="display: none;">
            </div>
        </div>
    </body>
</html>
