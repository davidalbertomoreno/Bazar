package Controlador;

import java.sql.*;

public class Conexion {
    private String USERNAME = new String("root");
	private String PASS = new String("");
	private String HOST = new String("localhost");
	private String PORT = new String("3306");
	private String DATABASE = new String("juego_pokemon");
	private String CLASSNAME = new String("com.mysql.jdbc.Driver");
	private String URL = new String("jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE+"?user="+USERNAME+"&"+PASS+"=");
	private Connection C= null;
	
	public Conexion(){
		try{
            Class.forName("com.mysql.jdbc.Driver");
            C = DriverManager.getConnection(URL,USERNAME,PASS);
            System.out.println("Conexión exitosa.");
        }
        catch(ClassNotFoundException | SQLException e){
            System.err.println("Error: \n"+e);
        }
	}
	public Connection getConexion(){
		return C;
	}
	public static void main (String[] args){
        Conexion C = new Conexion();
    }
}