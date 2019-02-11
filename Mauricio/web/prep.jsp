<%-- 
    Document   : Preparación
    Created on : 08-02-2019, 19:18:04
    Author     : Mazamo Dafter Dark
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Preparación</title>
        <link href="css/JP.css" rel="stylesheet" type="text/css"/>
		<link href="css/pagina.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="#f0f0fd">
	<%
	HttpSession HS = request.getSession();
	String usuario = (String)HS.getAttribute("usuario");
	if(usuario == null){
	response.sendRedirect("index.jsp");
    }
	ArrayList<String> imagen = (ArrayList<String>)request.getAttribute("imagen");
	ArrayList<String> nombre = (ArrayList<String>)request.getAttribute("nombre");
	ArrayList<String> mote = (ArrayList<String>)request.getAttribute("alias");
	%>
	<div class="Banner">
		<a href='CDUsuario'>
			<img class="BannerIMG" src="https://fontmeme.com/permalink/190204/d47185544d1fa348a14808f6c977dcbf.png" alt='Volver'>
		</a>
		<a href='CDUsuario'>
			<img class="BannerIMG" src="https://fontmeme.com/permalink/190204/d47185544d1fa348a14808f6c977dcbf.png" alt='Volver'>
		</a>
		<a href='CDUsuario'>
			<img class="BannerIMG" src="https://fontmeme.com/permalink/190204/d47185544d1fa348a14808f6c977dcbf.png" alt='Volver'>
		</a>
		<div id='nUsuario'>
			<%= usuario%>
		</div>
		<div>
            <%= imagen.size()%>
            <%= nombre.size()%>
            <%= mote.size()%>
		</div>
	</div>
    <div>
        <%
            for(int i = 0; i < imagen.size(); i++){
                %>
                <div><%= imagen.get(i)%></div>
                <div><%= nombre.get(i)%></div>
                <div><%= mote.get(i)%></div>
                <%
            }
        %>
    </div>
    </body>
</html>
