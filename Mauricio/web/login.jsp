<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Iniciar Sesión</title>
	<script src="js/Login.js"></script>
	<link rel="stylesheet" type="text/css" href="css/JP.css">
</head>
<body bgcolor="#f0f0fd">
<h1 align="center"><img src="https://fontmeme.com/permalink/190115/74b2316d99e0887c5558f4f813e92144.png" alt="Iniciar Sesión"></h1>
    <div align="center">
	<form action="Login" method="post" id="login">
            <input type="text" name="usuario" id="usuario" style="width:200px;" required placeholder="Nombre de usuario">
			<input type="password" name="password" id="password" style="width:200px;" required placeholder="Contraseña">
			<div style="height:20px"></div>
            <input type="submit" value="Ingresar" align="right" id="ingresar" style="width:200px; height:30px">
	</form>
	<div style="height:50px"></div>
	<div id="err" style="width: 500px;background-color: red;border-radius:15px"></div>
    </div>
</body>
</html>