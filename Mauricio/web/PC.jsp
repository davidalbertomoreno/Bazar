<%@page import="java.sql.*"%>
<%@page import="Controlador.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PC</title>
		<link rel="stylesheet" type="text/css" href="css/JP.css">
    </head>
    <body bgcolor="#f0f0fd">
		<%
			HttpSession HS = request.getSession();
			String usuario = (String)HS.getAttribute("usuario");
			String personaje = (String)HS.getAttribute("personaje");
			Consultas C = new Consultas();
			if(usuario == null){
				response.sendRedirect("index.jsp");
			}
			int aux = 0;
			int i = 0;
			int x = 0;
			int y = 0;
			
			ResultSet RS = C.cargarPokemons(usuario, personaje);
		%>
	<div id='Opt' align='center'></div>
	<div id='all'>
	<div id='volverPerfil' align="center">
		<a href='CDUsuario'>
			<img width='50%' src='https://fontmeme.com/permalink/190204/d47185544d1fa348a14808f6c977dcbf.png'>
		</a>
	</div>
	<div id='PBox'>
	<%
	while(RS.next()){
		if(!RS.getBoolean(9)){
			%>
			<div class="scalePok" align="center" style="left: <%= x%>%; top: <%= y%>%">
			<div class="ImgCont"><%= "<img id='Img"+i+"' class='ImgPokPeq' src='"+RS.getString(1)+"' alt='"+RS.getString(2)+"' onmouseenter='focusPK("+i+")' onmouseout='blurPK()' onclick='clickPK("+i+")'></img>"%></div>
			<div id="Nombre<%= i%>" class="idPokPC">
				<%=RS.getString(2)%>
			</div>
			<div id="Apodo<%= i%>" class="idPokPC">
			<% if(RS.getString(3) != null){
				out.print(RS.getString(3));
			}
			else{
				out.print("");
			}%>
			</div>
			<div id="Tipo<%= i%>" class="idPokPC"><%= RS.getString(4)%></div>
			<div id="Especie<%= i%>" class="idPokPC"><%= RS.getString(5)%></div>
			<div id="Nivel<%= i%>" class="idPokPC"><%= RS.getString(6)%></div>
			<div id="Salud<%= i%>" class="idPokPC"><%= RS.getString(7)%></div>
			<div id="ID<%= i%>" class="idPokPC"><%= RS.getString(8)%></div>
			<div id="IDpkmn<%= i%>" class="idPokPC"><%= RS.getString(10)%></div>
			</div>
		<%
			if(x == 80){
				x = -20;	
			}
			if(x == -20){
				y += 30;
			}
			x += 20;
			i++;
		}
		else{
			aux++;
		}
	}
		%>
			<div id="TEq" class="idPokPC"><%= aux%></div>
		</div>
	<div id='PHave'>
		<%
		RS = C.cargarPokemons(usuario, personaje);
		x = 0;
		y = 0;
		aux = 1;
		while(RS.next()){
			if(RS.getBoolean(9)){
				i++;
				%>
				<div class="scaleMyPok" align="center" style="left: <%= x%>%; top: <%= y%>%">
				<div class="ImgCont"><%= "<img id='Img"+i+"' class='ImgPokPeq' src='"+RS.getString(1)+"' alt='"+RS.getString(2)+"' onmouseenter='focusPK("+i+")' onmouseout='blurPK()' onclick='clickPKAs("+i+")'></img>"%></div>
				<div id="Nombre<%= i%>" class="idPokPC">
					<%=RS.getString(2)%>
				</div>
				<div id="Apodo<%= i%>" class="idPokPC">
					<% if(RS.getString(3) != null){
						out.print(RS.getString(3));
					}
					else{
						out.print("");
					}%>
				</div>
				<div id="Tipo<%= i%>" class="idPokPC"><%= RS.getString(4)%></div>
				<div id="Especie<%= i%>" class="idPokPC"><%= RS.getString(5)%></div>
				<div id="Nivel<%= i%>" class="idPokPC"><%= RS.getString(6)%></div>
				<div id="Salud<%= i%>" class="idPokPC"><%= RS.getString(7)%></div>
				<div id="ID<%= i%>" class="idPokPC"><%= RS.getString(8)%></div>
				<div id="IDpkmn<%= i%>" class="idPokPC"><%= RS.getString(10)%></div>
				</div>
				<%
				if(x == 66){
					x = -33;
				}
				if(x == -33){
					y += 50;
				}
				x += 33;
				aux++;
			}
			i++;
		}
		while(aux <= 6){
			%>
			<div class="scaleMyPok" align="center" style="left: <%= x%>%; top: <%= y%>%">
				<div class='ImgCont'>
					<img class='ImgPokPeq' src='pic/plus.png'>
				</div>
			</div>
			<%
			if(x == 66){
				x = -33;
			}
			if(x == -33){
				y += 50;
			}
			x += 33;
			aux++;
		}
		%>
		</div>
		<div id='PokName'>
			<div>Elige un pokemon!</div>
		</div>
		<div id='ImgPokDIV'>
			<img id='ImgPokGra' src='pic/PKball.png'>
		</div>
		<div id='DesPok'>
			<div id="CPok">
				<div>Tipo:</div>
				<div>Especie:</div>
				<div>Nivel:</div>
				<div>Salud:</div>
				<div>ID:</div>
			</div>
			<div id="SPok">
				Pasa el cursor por sobre algúno de tus pokémons para verlo en detalle o haz click sobre ellos para opciones adicionales.
			</div>
		</div>
	</div>
		<script src="js/PC.js" type="text/javascript"></script>
    </body>
</html>
