<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	HttpSession HS = request.getSession();
	String usuario = (String)HS.getAttribute("usuario");
	if(usuario == null){
	response.sendRedirect("index.jsp");
	}	
	String nombre_personaje = (String)HS.getAttribute("personaje");
	int Nivel = Integer.parseInt((String)request.getAttribute("nivel"));
	int Exp = Integer.parseInt((String)request.getAttribute("experiencia"));
	int Pokemonedas = Integer.parseInt((String)request.getAttribute("pokemonedas"));
	
	boolean Medalla1 = Boolean.valueOf((String)request.getAttribute("medalla1"));
	boolean Medalla2 = Boolean.valueOf((String)request.getAttribute("medalla2"));
	boolean Medalla3 = Boolean.valueOf((String)request.getAttribute("medalla3"));
	
	String genero = (String)request.getAttribute("genero");
	String raza = (String)request.getAttribute("raza");
	String equipo = (String)request.getAttribute("equipo");
	String colorOjos = (String)request.getAttribute("color_ojos");
	String colorPelo = (String)request.getAttribute("color_pelo");
	
	String pkmn1 = (String)request.getAttribute("pkmn1");
	String pkmn2 = (String)request.getAttribute("pkmn2");
	String pkmn3 = (String)request.getAttribute("pkmn3");
	String pkmn4 = (String)request.getAttribute("pkmn4");
	String pkmn5 = (String)request.getAttribute("pkmn5");
	String pkmn6 = (String)request.getAttribute("pkmn6");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
        <link href="css/pagina.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="#f0f0fd">
		<div>
			
		</div>
        <div align="left">
		<div id='bienvenidaB'>
			<div>
				<img src="https://fontmeme.com/permalink/190125/cdd3d9c68e05fca2e7c519691f72f3cd.png" alt="fuente-pokemon" border="0" style='height:50px;'>
			</div>
			<div id='nUsuario'>
				<%= usuario%>
			</div>
		</div>
        </div>
        <div id="personaje" align="left" style="background-color:skyblue; width:25%;">
            <div align="center">
            <h2><%=nombre_personaje%></h2><br>
        <%
			out.print("<div class='charDiv'><img class='charPhoto' src='pic/"+genero+".png'></div>");
			out.print("<div class='charDiv'><img class='charPhoto' src='pic/"+genero+"/raza/"+raza+".png'></div>");
			out.print("<div class='charDiv'><img class='charPhoto' src='pic/"+genero+"/equipo/"+equipo+".png'></div>");
			out.print("<div class='charDiv'><img class='charPhoto' src='pic/"+genero+"/colorOjos/"+colorOjos+".png'></div>");
			out.print("<div class='charDiv'><img class='charPhoto' src='pic/"+genero+"/colorPelo/"+colorPelo+".png'></div>");
		%>
		<div id='charStats'>
			<div>Nivel: <%=Nivel%></div>
			<div>Exp: <%=Exp%></div>
			<div>Pokemonedas: <%=Pokemonedas%></div>
		</div>
            </div>
        </div>
        <div id="pokemones" align="center" style="background-color:greenyellow; width:25%;">
		<!--<div style="height:10%"></div>-->
            <h2>Pokemones</h2>
        <div style="height:5%"></div>
		<%
		out.print("<div>");
		out.print("<img src='"+pkmn1+"' width='60' height='60' border='2px' class='poke'>");
		out.print("<img src='"+pkmn2+"' width='60' height='60' border='2px' class='poke'>");
		out.print("<img src='"+pkmn3+"' width='60' height='60' border='2px' class='poke'>");
		out.print("<div></div>");
		out.print("<img src='"+pkmn4+"' width='60' height='60' border='2px' class='poke'>");
		out.print("<img src='"+pkmn5+"' width='60' height='60' border='2px' class='poke'>");
		out.print("<img src='"+pkmn6+"' width='60' height='60' border='2px' class='poke'>");
		out.print("</div>");
		%>
        <!--<div style="height:10%"></div>-->
        <h2>Medallas</h2>
			<div>
			<%
				if(Medalla1){
					out.print("<img src='pic/medalla1.png' width='60' height='60'>");
				}
				else{
					out.print("<img src='pic/medalNotch.png' width='60' height='60'>");
				}
				
				if(Medalla2){
					out.print("<img src='pic/medalla2.png' width='60' height='60'>");
				}
				else{
					out.print("<img src='pic/medalNotch.png' width='60' height='60'>");
				}
				
				if(Medalla3){
					out.print("<img src='pic/medalla3.png' width='60' height='60'>");
				}
				else{
					out.print("<img src='pic/medalNotch.png' width='60' height='60'>");
				}
			%>
			</div>
		</div>
        <div align="center" id="opciones">
			<a href="Cerrar">
				<img src="https://fontmeme.com/permalink/190125/78758a24caa3460432d012965af22750.png" alt="Salir" class='profileButtons'>
			</a>
			<a href="jugar.jsp">
				<img src="https://fontmeme.com/permalink/190125/b491790f3625bbb0847e75f553cfdca1.png" alt="Jugar" class='profileButtons'>
			</a>
			<a href="PC.jsp">
				<img src="https://fontmeme.com/permalink/190204/f8e9a16ac025cc70790abd651b7594df.png" alt="PC" class='profileButtons'>
			</a>
			<a href="pokedex.jsp">
				<img src="https://fontmeme.com/permalink/190206/7ab1e18883d333af7aa22de5d961caed.png" alt="PC" class='profileButtons'>
			</a>
			<a href="Bazar.jsp">
				<img src="https://fontmeme.com/permalink/190206/e1cd2ee429f5411b181884a7d4caba36.png" alt="Bazar" class='profileButtons'>
			</a>
			<a href="configuracion.jsp">
				<img src="https://fontmeme.com/permalink/190125/daf6d4535e123fe2c82fdf5d4b1bfafc.png" alt="Configuración" class='profileButtons'>
			</a>
        </div>
    </body>
