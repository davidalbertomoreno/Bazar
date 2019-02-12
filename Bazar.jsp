<%-- 
    Document   : Bazar
    Created on : 30-ene-2019, 21:21:02
    Author     : CapacitaPlural01
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bazar</title>
        <link href="CSS/pagina.css" rel="stylesheet" type="text/css"/>
    </head>
    
        <div id="pichulon">
            <!--aqui no hay blur-->
        </div>
        <div id="pichulita" align='center'>
            <div align="left" style="background-color: darkorange" id="barrabazar">
        <img src="https://fontmeme.com/permalink/190131/e1cd2ee429f5411b181884a7d4caba36.png" alt="Bazar" border="0">
        </div>
            <br><br><br><br><br>
        <div style="background-color:skyblue;">
        <br>
        <img src="https://fontmeme.com/permalink/190131/12e14050b544418faac7dd0dbad454a8.png" alt="Pokemonedas" border="0">
        <br>
        <br>
        </div>
        <div style="background-color:greenyellow;">
            <br>
        <img src="https://i.pinimg.com/originals/63/89/fa/6389fa22ed7653c40570c98b03764afc.gif" width="250" border="2px" class="clickObj" >
        <img src="https://media.giphy.com/media/PqVBpJna7r8Gs/giphy.gif" width="250" border="2px" class="clickObj" >
        <img src="https://media.giphy.com/media/bZT9BG7Nog9Gg/giphy.gif" width="250" border="2px" class="clickObj" >
        <br>
        <br>
        </div>
        <div style="background-color:skyblue;">
        <br>
        <img src="https://fontmeme.com/permalink/190131/aa01edeb0b98e8d37904535670649828.png" alt="PokeBox" border="0">
        <br>
        </div>
        <div style="background-color:greenyellow;">
            <br>
        <img src="https://www.totalcards.net/pub/media/catalog/product/cache/432e6304a205a63a3c87e5fae28f3e65/i/n/instinct-pokebox.jpg" width="250" border="2px" class="clickObj" >
        <img src="https://www.totalcards.net/pub/media/catalog/product/cache/432e6304a205a63a3c87e5fae28f3e65/m/y/mystic-pokebox.jpg" width="250" border="2px" class="clickObj" >
        <img src="https://www.totalcards.net/pub/media/catalog/product/cache/432e6304a205a63a3c87e5fae28f3e65/a/u/august-pokebox.jpg" width="250" border="2px" class="clickObj" >
        <br>
        <br>
        </div>
        <div style="background-color:skyblue;">
        <br>
        <img src="https://fontmeme.com/permalink/190131/1bafdfaf53c8d094f1eb468953cc5e86.png" alt="Objetos Usables" border="0">
        <br>
        </div>
        <div style="background-color:greenyellow;">
            <br>
        
            <a href="#openModal31"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/9/95/Poci%C3%B3n_%28Dream_World%29.png/revision/latest?cb=20110130140443" id="pocion" class="clickObj"></a>
            
                <div id="openModal31" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Poción</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/9/95/Poci%C3%B3n_%28Dream_World%29.png/revision/latest?cb=20110130140443" id="pocion" >
                <p><u>Descripción:</u></p>
		<p>Cura a un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
            <a href="#openModal32"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/b/b9/Superpoci%C3%B3n_%28Dream_World%29.png/revision/latest?cb=20110130141027" id="superpocion" class="clickObj"></a>
        <div id="openModal32" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Súper Poción</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/b/b9/Superpoci%C3%B3n_%28Dream_World%29.png/revision/latest?cb=20110130141027" id="superpocion" >
                <p><u>Descripción:</u></p>
		<p>Súper-cura a un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
            <a href="#openModal33"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/e/e4/Hiperpoci%C3%B3n_%28Dream_World%29.png/revision/latest?cb=20110130134606" id="hiperpocion" class="clickObj"></a>
        <div id="openModal33" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Hiper Poción</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/e/e4/Hiperpoci%C3%B3n_%28Dream_World%29.png/revision/latest?cb=20110130134606" id="hiperpocion" >
                <p><u>Descripción:</u></p>
		<p>Hiper-cura a un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
            <a href="#openModal34"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/0/02/Pok%C3%A9_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20090125150654" id="pokeball" class="clickObj" width="100px"></a>
        <div id="openModal34" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Pokéball</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/0/02/Pok%C3%A9_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20090125150654" id="pokeball" width="100px" >
                <p><u>Descripción:</u></p>
		<p>Captura a los Pokémons salvajes!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
            <a href="#openModal35"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/5/57/Super_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20160831125614" id="superball" class="clickObj" width="90px"></a>
        <div id="openModal35" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Súperball</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/5/57/Super_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20160831125614" id="superball" width="90px" >
                <p><u>Descripción:</u></p>
		<p>Súper-captura a los Pokémons salvajes!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
            <a href="#openModal36"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/c/c9/Ultra_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20090125150713" id="ultraball" class="clickObj" width="100px"></a>
        <div id="openModal36" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Ultraball</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/c/c9/Ultra_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20090125150713" id="ultraball" width="100px" >
                <p><u>Descripción:</u></p>
		<p>Ultra-captura a los Pokémons salvajes!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
            <a href="#openModal37"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/a/a9/Master_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20120802225204" id="masterball" class="clickObj" width="80px">
        <div id="openModal37" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Masterball</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/a/a9/Master_Ball_%28Ilustraci%C3%B3n%29.png/revision/latest?cb=20120802225204" id="masterball" width="80px">
                <p><u>Descripción:</u></p>
		<p>Captura sin chances de falla a un Pokémon salvaje!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
                <a href="#openModal38"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/e/ec/Restaurar_todo_%28Dream_World%29.png/revision/latest?cb=20110130140741" id="restaurartodo" class="clickObj"></a>
        <div id="openModal38" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Restaurar Todo</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/e/ec/Restaurar_todo_%28Dream_World%29.png/revision/latest?cb=20110130140741" id="restaurartodo">
                <p><u>Descripción:</u></p>
		<p>Restaura completamente estado y salud a un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <br>
        <a href="#openModal39"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/1/17/Ant%C3%ADdoto_%28Dream_World%29.png/revision/latest?cb=20110130120414" id="antidoto" class="clickObj"></a>
        <div id="openModal39" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Antídoto</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/1/17/Ant%C3%ADdoto_%28Dream_World%29.png/revision/latest?cb=20110130120414" id="antidoto">
                <p><u>Descripción:</u></p>
		<p>Cura estado ENVENENADO a un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <a href="#openModal310"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/d/d8/Antiparalizador_%28Dream_World%29.png/revision/latest?cb=20110130120415" id="antiparalizador" class="clickObj"></a>
        <div id="openModal310" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Antiparalizador</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/d/d8/Antiparalizador_%28Dream_World%29.png/revision/latest?cb=20110130120415" id="antiparalizador">
                <p><u>Descripción:</u></p>
		<p>Cura estado PARALIZADO a un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <a href="#openModal311"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/9/92/Antihielo_%28Dream_World%29.png/revision/latest?cb=20110130120414" id="antihielo" class="clickObj"></a>
        <div id="openModal311" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Antihielo</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/9/92/Antihielo_%28Dream_World%29.png/revision/latest?cb=20110130120414" id="antihielo">
                <p><u>Descripción:</u></p>
		<p>Cura estado CONGELADO a un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <a href="#openModal312"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/6/63/Antiquemar_%28Dream_World%29.png/revision/latest?cb=20110130120416" id="antiquemar" class="clickObj"></a>
        <div id="openModal312" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Antiquemar</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/6/63/Antiquemar_%28Dream_World%29.png/revision/latest?cb=20110130120416" id="antiquemar">
                <p><u>Descripción:</u></p>
		<p>Cura estado QUEMÁNDOSE a un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <a href="#openModal313"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/d/d7/Despertar_%28Dream_World%29.png/revision/latest?cb=20110130120820" id="despertar" class="clickObj"></a>
        <div id="openModal313" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Despertar</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/d/d7/Despertar_%28Dream_World%29.png/revision/latest?cb=20110130120820" id="despertar">
                <p><u>Descripción:</u></p>
		<p>Despierta a un Pokémon dormido!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <a href="#openModal314"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/0/07/Cura_total_%28Dream_World%29.png/revision/latest?cb=20110130120819" id="curatotal" class="clickObj"></a>
        <div id="openModal314" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Cura Total</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/0/07/Cura_total_%28Dream_World%29.png/revision/latest?cb=20110130120819" id="curatotal">
                <p><u>Descripción:</u></p>
		<p>Cura todos los estados a un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <a href="#openModal315"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/a/af/%C3%89ter_%28Dream_World%29.png/revision/latest?cb=20110130121036" id="eter" class="clickObj"></a>
        <div id="openModal315" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Éter</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/a/af/%C3%89ter_%28Dream_World%29.png/revision/latest?cb=20110130121036" id="eter">
                <p><u>Descripción:</u></p>
		<p>Restaura 10 puntos de poder de una habilidad de un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <a href="#openModal316"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/8/89/%C3%89ter_m%C3%A1ximo_%28Dream_World%29.png/revision/latest?cb=20110130121036" id="etermaximo" class="clickObj"></a>
        <div id="openModal316" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Éter Máximo</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/8/89/%C3%89ter_m%C3%A1ximo_%28Dream_World%29.png/revision/latest?cb=20110130121036" id="etermaximo">
                <p><u>Descripción:</u></p>
		<p>Restaura todos los puntos de poder de una habilidad de un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <a href="#openModal317"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/5/57/Elixir_%28Dream_World%29.png/revision/latest?cb=20110130121034" id="elixir" class="clickObj"></a>
        <div id="openModal317" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Elixir</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/5/57/Elixir_%28Dream_World%29.png/revision/latest?cb=20110130121034" id="elixir">
                <p><u>Descripción:</u></p>
		<p>Restaura 10 puntos de poder de todas las habilidades de un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <a href="#openModal318"><img src=https://vignette.wikia.nocookie.net/es.pokemon/images/f/f9/M%C3%A1ximo_elixir_%28Dream_World%29.png/revision/latest?cb=20110130121035" id="elixirmaximo" class="clickObj"></a>
        <div id="openModal318" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Elixir Máximo</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/f/f9/M%C3%A1ximo_elixir_%28Dream_World%29.png/revision/latest?cb=20110130121035" id="elixirmaximo">
                <p><u>Descripción:</u></p>
		<p>Restaura todos los puntos de poder de todas las habilidades de un Pokémon!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        <a href="#openModal319"><img src="https://vignette.wikia.nocookie.net/es.pokemon/images/3/3e/Revivir_%28Dream_World%29.png/revision/latest?cb=20110130140741" id="revivir" class="clickObj"></a>
        <div id="openModal319" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Revivir</h2>
                <img src="https://vignette.wikia.nocookie.net/es.pokemon/images/3/3e/Revivir_%28Dream_World%29.png/revision/latest?cb=20110130140741" id="revivir">
                <p><u>Descripción:</u></p>
		<p>Revive a un Pokémon debilitado!</p>
                <button class="btn default">Comprar</button>
	</div>
</div>
        
        
        
        <br>
        </div>
        <div style="background-color:skyblue;">
        <br>
        <img src="https://fontmeme.com/permalink/190207/0cdf8d9df5e2e90711475cc1a1954ee4.png" alt="Objetos Estéticos" border="0">
        <br>
        </div>
            <div style="background-color: greenyellow">
                <br>
                <img src="https://images-na.ssl-images-amazon.com/images/I/41ogX5d%2BxiL.jpg" border="2px" width="250px" class="clickObj">
                <img src="https://sgfm.elcorteingles.es/SGFM/dctm/MEDIA03/201610/25/00183140109048____1__640x640.jpg" border="2px" width="200px" class="clickObj">
                <img src="http://i.ebayimg.com/images/g/wzcAAOSw8gVX28fq/s-l300.jpg" width="250px" border="2px" class="clickObj">
                <br>
                <br>
            </div>
            <div style="background-color:skyblue;">
                <br>
                <a href="pokeventas" ><img src="https://fontmeme.com/permalink/190211/5fbb0efd88ba1487af616b9c50c04cd9.png" alt="Venta" border="0" class="clickObj"></a>
                <br>
            </div>
            <div style="background-color: darkorange">
        <br>
        <a href="perfil.jsp"><img src="https://fontmeme.com/permalink/190207/74016aa948734bfc5936ec3068ff02eb.png" alt="volver" border="0"></a>
        <br>
            </div>
            </div>
    </body>
</html>
