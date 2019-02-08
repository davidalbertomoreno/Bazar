<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE.html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body bgcolor="#f0f0fd">
        <h1 align="center"><img src="https://fontmeme.com/permalink/190115/617d52d001350e2fa4411ece9c655980.png" alt="Registrarse"></h1>
        <form name="formulario" action="Register" method="post" id="register">
            <div align="center">
                <input maxlength="50" type="text" name="usuario" id="usuario" value="" style="width:200px;" required placeholder="Nombre de usuario">
            </div>
		<div style="height:10px"></div>
            <div align="center">
                <input maxlength="50" type="email" name="email" pattern="[^ @]*@[^ @]*" id="email" value="" style="width:200px;" required placeholder="Correo electrónico" onblur="emailsBlur()" onfocus="Focus(this.id)">
                <input maxlength="50" type="email" name="reemail" pattern="[^ @]*@[^ @]*" id="reemail" value="" style="width:200px;" required placeholder="Repita el correo electrónico" onblur="emailsBlur()" onfocus="Focus(this.id)">
            </div>
		<div style="height:10px"></div>
			<div align="center">
                <input maxlength="50" type="password" name="password" id="password" value="" style="width:200px;" required placeholder="Contraseña" onblur="passBlur()" onfocus="Focus(this.id)">
                <input maxlength="50" type="password" name="repassword" id="repassword" value="" style="width:200px;" required placeholder="Repita la contraseña" onblur="passBlur()" onfocus="Focus(this.id)">
            </div>
            <!--
            <div align="center">
            <input type="checkbox" name="terms" id="terms">
            <label for="terms" value="">Aceptar términos y condiciones</label>
            </div>
            -->
			<div style="height:20px"></div>
            <div align="center">
                <input type="submit" value="Registrarse" id="registrarse" style="width:200px; height:30px">
        </form>
			<div style="height:50px"></div>
			<div align="center" id="err" style="width: 500px;background-color: red;border-radius:15px"></div>
            </div>
		<script src="js/Register.js"></script>
    </body>
</html>
