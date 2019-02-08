package Controlador;

import java.sql.*;

public class Consultas extends Conexion{
	public boolean loggear(String nombre, String contraseña){
		PreparedStatement P = null;
		ResultSet R = null;
		try{
			String consulta = "select * from usuarios where nombre = ? and contraseña = ?";
			P = getConexion().prepareStatement(consulta);
			P.setString(1, nombre);
			P.setString(2, contraseña);
			R = P.executeQuery();
			if(R.absolute(1)){
				return true;
			}
		}
		catch(SQLException e){
			System.err.println("Error: "+e);
		}
		return false;
	}
	public boolean registrar(String nombre, String contraseña, String email){
		PreparedStatement P = null;
		try{
			String consulta = "insert into usuarios (nombre,contraseña,email) values (?,?,?)";
			P = getConexion().prepareStatement(consulta);
			P.setString(1, nombre);
			P.setString(2, contraseña);
			P.setString(3, email);
			if(P.executeUpdate() == 1){
				return true;
			}
		}
		catch(SQLException e){
			System.err.println("Error: "+e);
		}
		finally{
			try{
				if(getConexion() != null) getConexion().close();
				if(P != null) P.close();
			}
			catch(SQLException e){
			}
		}
		return false;
	}
	public boolean verificarPersonaje(String nombre){
		PreparedStatement P = null;
		ResultSet R = null;
		try{
			String consulta = "select * from usuarios inner join personajes on usuarios.id = personajes.fk_usuario where usuarios.nombre = ?";
			P = getConexion().prepareStatement(consulta);
			P.setString(1, nombre);
			R = P.executeQuery();
			if(R.absolute(1)){
				return true;
			}
		}
		catch(SQLException e){
			System.err.println("Error: "+e);
		}
		finally{
			try{
				if(getConexion() != null) getConexion().close();
				if(P != null) P.close();
				if(R != null) R.close();
			}
			catch(SQLException e){
			}
		}
		return false;
	}
	public boolean crearPersonaje(String nombre,int fk_usuario,String genero,String raza,String equipo, String COjos, String CPelo){
		PreparedStatement P = null;
		try{
			String consulta = "insert into personajes (nombre,fk_usuario,genero,raza,equipo,color_ojos,color_pelo) values (?,?,?,?,?,?,?)";
			P = getConexion().prepareStatement(consulta);
			P.setString(1, nombre);
			P.setInt(2, fk_usuario);
			P.setString(3, genero);
			P.setString(4, raza);
			P.setString(5, equipo);
			P.setString(6, COjos);
			P.setString(7, CPelo);
			if(P.executeUpdate() == 1){
				return true;
			}
		}
		catch(SQLException e){
			System.err.println("Error: "+e);
		}
		finally{
			try{
				if(getConexion() != null) getConexion().close();
				if(P != null) P.close();
			}
			catch(SQLException e){
			}
		}
		return false;
	}
	public String getID(String nombre){
		PreparedStatement P = null;
		ResultSet R = null;
		try{
			String consulta = "select id from usuarios where nombre = ?";
			P = getConexion().prepareStatement(consulta);
			P.setString(1, nombre);
			R = P.executeQuery();
			while(R.next()){
				return R.getString(1);
			}
		}
		catch(SQLException e){
			System.err.println("Error: "+e);
		}
		finally{
			try{
				if(R != null) R.close();
			}
			catch(SQLException e){
			}
		}
		return null;
	}
    public ResultSet cargarPersonaje(String nombre_usuario){
		PreparedStatement PS;
		ResultSet RS = null;
		try{
			String consulta = "select personajes.nombre, personajes.nivel, personajes.genero, personajes.raza, personajes.equipo, personajes.color_ojos, personajes.color_pelo, personajes.medalla1, personajes.medalla2, personajes.medalla3, personajes.pokemoneda, personajes.experiencia from personajes inner join usuarios on personajes.fk_usuario=usuarios.id where usuarios.nombre=?";
			PS = getConexion().prepareStatement(consulta);
			PS.setString(1, nombre_usuario);
			RS = PS.executeQuery();
            }
            catch(SQLException e){System.err.println("Error: "+e);}
            return RS;
	}
    public ResultSet cargarPokemons(String usuario, String character){
		PreparedStatement PS;
		ResultSet RS = null;
		try{
			String consulta = "select pokemons.imagen, pokemons.nombre, pokedexs.alias, pokemons.tipo, pokemons.especie, pokedexs.nivel, pokedexs.salud, pokedexs.id, pokedexs.estado, pokemons.id from pokedexs inner join personajes on pokedexs.fk_personaje = personajes.id inner join usuarios on personajes.fk_usuario = usuarios.id inner join pokemons on pokedexs.fk_pokemon = pokemons.id where usuarios.nombre = ? and personajes.nombre = ?;";
			PS = getConexion().prepareStatement(consulta);
			PS.setString(1, usuario);
            PS.setString(2, character);
			RS = PS.executeQuery();
            }
            catch(SQLException e){}
            return RS;
	}
	public boolean liberarPokemon(int id){
		PreparedStatement P = null;
		try{
			String consulta = "delete from pokedexs where id=?";
			P = getConexion().prepareStatement(consulta);
			P.setInt(1, id);
			if(P.executeUpdate() == 1){
				return true;
			}
        }
		catch(SQLException e){
			System.err.println("Error: "+e);
		}
		finally{
			try{
				if(getConexion() != null) getConexion().close();
				if(P != null) P.close();
			}
			catch(SQLException e){
				System.err.println("Error: "+e);
			}
		}
		return false;
	}
	public boolean renombrarPokemon(int id, String rename){
		PreparedStatement P = null;
		try{
			String consulta = "update pokedexs set alias='"+rename+"' where id = ?";
			P = getConexion().prepareStatement(consulta);
			P.setInt(1, id);
			if(P.executeUpdate() == 1){
				return true;
			}
        }
		catch(SQLException e){
			System.err.println("Error: "+e);
		}
		finally{
			try{
				if(getConexion() != null) getConexion().close();
				if(P != null) P.close();
			}
			catch(SQLException e){
				System.err.println("Error: "+e);
			}
		}
		return false;
	}
	
	public boolean asignarPokemon(int id){
		PreparedStatement P = null;
		try{
			String consulta = "update pokedexs set estado=1 where id = ?";
			P = getConexion().prepareStatement(consulta);
			P.setInt(1, id);
			if(P.executeUpdate() == 1){
				return true;
			}
        }
		catch(SQLException e){
			System.err.println("Error: "+e);
		}
		finally{
			try{
				if(getConexion() != null) getConexion().close();
				if(P != null) P.close();
			}
			catch(SQLException e){
				System.err.println("Error: "+e);
			}
		}
		return false;
	}
	
	public boolean desasignarPokemon(int id){
		PreparedStatement P = null;
		try{
			String consulta = "update pokedexs set estado=0 where id = ?";
			P = getConexion().prepareStatement(consulta);
			P.setInt(1, id);
			if(P.executeUpdate() == 1){
				return true;
			}
        }
		catch(SQLException e){
			System.err.println("Error: "+e);
		}
		finally{
			try{
				if(getConexion() != null) getConexion().close();
				if(P != null) P.close();
			}
			catch(SQLException e){
				System.err.println("Error: "+e);
			}
		}
		return false;
	}
        /*public static void main (String[]args){
            Consultas C = new Consultas();
            if(C.renombrarPokemon(34, "Diabolo")){
                System.out.println("Exito");
            }
            else{
                System.out.println("Error");
            }
        }*/
	/*public static void main (String[] args){
		Consultas C = new Consultas();
		System.out.println(C.getID("Lucile Guerra"));
	}*/
}