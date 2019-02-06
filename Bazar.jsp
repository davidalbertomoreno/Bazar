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
    <body>
        <div id="pichulon">
            <!--aqui no hay blur-->
        </div>
        <div id="pichulita" align='center'>
            <div align="left" style="background-color: darkorange">
        <img src="https://fontmeme.com/permalink/190131/e1cd2ee429f5411b181884a7d4caba36.png" alt="Bazar" border="0">
        </div>
        <div style="background-color:skyblue;">
        <img src="https://fontmeme.com/permalink/190131/12e14050b544418faac7dd0dbad454a8.png" alt="Pokemonedas" border="0">
        <br>
        </div>
        <div style="background-color:greenyellow;">
        <img src="https://support.carousell.com/hc/article_attachments/115019673488/image.gif" width="550" border="2px" id="unopk">
        <img src="https://i.pinimg.com/originals/63/89/fa/6389fa22ed7653c40570c98b03764afc.gif" width="250" border="2px">
        <img src="https://media.giphy.com/media/PqVBpJna7r8Gs/giphy.gif" width="250" border="2px">
        <br>
        </div>
        <div style="background-color:skyblue;">
        <img src="https://fontmeme.com/permalink/190131/aa01edeb0b98e8d37904535670649828.png" alt="PokeBox" border="0">
        <br>
        </div>
        <div style="background-color:greenyellow;">
        <img src="https://www.totalcards.net/pub/media/catalog/product/cache/432e6304a205a63a3c87e5fae28f3e65/i/n/instinct-pokebox.jpg" width="250" border="2px">
        <img src="https://www.totalcards.net/pub/media/catalog/product/cache/432e6304a205a63a3c87e5fae28f3e65/m/y/mystic-pokebox.jpg" width="250" border="2px">
        <img src="https://www.totalcards.net/pub/media/catalog/product/cache/432e6304a205a63a3c87e5fae28f3e65/a/u/august-pokebox.jpg" width="250" border="2px">
        <br>
        </div>
        <div style="background-color:skyblue;">
        <img src="https://fontmeme.com/permalink/190131/1bafdfaf53c8d094f1eb468953cc5e86.png" alt="Objetos Usables" border="0">
        <br>
        </div>
        <div style="background-color:greenyellow;">
        <div onclick='loaditem()'>
        <img src="https://banner2.kisspng.com/20171218/cd4/pokeball-png-5a383fe4064786.0414445215136358120257.jpg" width="250" id="pokeball">
        </div>
        <br>
        </div>
        <div style="background-color:skyblue;">
        <img src="https://fontmeme.com/permalink/190131/4689d8575ac314ee02ebd6f0d719848e.png" alt="Objetos Esteticos" border="0">
        <br>
        </div>
        </div>
        <script>
function loaditem(){
    document.getElementById("pichulita").style.filter ="blur(5px)";
    
    document.getElementById("pichulon").innerHTML ="<div><button onclick='closeitem()' type='button'>Cerrar</button></div>";
}

function closeitem(){
    document.getElementById("pichulita").style.filter ="blur(0px)";
    
    document.getElementById("pichulon").innerHTML = "<!-- Pichulita -->";
}
        </script>
    </body>
</html>
