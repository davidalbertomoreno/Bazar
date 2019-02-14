package Controlador;

import java.sql.*;

/**
 *
 * @author Carito
 */
public class Consulta extends Conexion {
    
    public int idPers (String username){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String consulta = "select personajes.id from personajes inner join usuarios on personajes.id=usuarios.id where usuarios.nombre = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, username);
            rs = pst.executeQuery();
            
            while(rs.next()){
                return rs.getInt(1);
            }
            
        }catch (SQLException e){System.err.println("Error:\n"+e);}
         finally{
	    try{
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
		if(rs != null) rs.close();
            }catch(SQLException e){System.err.println("Error:\n"+e);}
        }
        
        return 0;
    }
    
    public int idObj(String objeto){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
           String consulta = "select id from bazares where nombre = ?";
           pst = getConexion().prepareStatement(consulta);
           pst.setString(1, objeto);
           rs = pst.executeQuery();
           
           while(rs.next()){
               return rs.getInt(1);
           }
        }catch(SQLException e){System.err.println("Error:\n"+e);}
        finally{
	    try{
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
	        if(rs != null) rs.close();
            }catch(SQLException e){System.err.println("Error:\n"+e);}
	}
        return 0;

    }
    
    public boolean monedas (int objeto, int personaje, int cantidad){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String consulta1 = "select precio from bazares where id=?";
            pst = getConexion().prepareStatement(consulta1);
            pst.setInt(1, objeto);
            rs = pst.executeQuery();
            if(rs.next()){
               int precio = rs.getInt(1);
            String consulta = "update personajes set pokemoneda = pokemoneda-?*? where id = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, precio);
            pst.setInt(2, cantidad);
            pst.setInt(3, personaje);
            
            if(pst.executeUpdate()==1){
                return true;
            }}
            
        }catch(SQLException e){ System.err.println("Error:\n"+e);
        }finally{
            try{
                if(getConexion()!=null)getConexion().close();
                if(pst!=null)pst.close();
                if(rs!=null) rs.close();
            }catch(Exception e){System.err.println("Error:\n"+e);}
        }
        return false;
    }
	
    public boolean consultas (int objeto, int personaje){
        PreparedStatement pst = null;
        ResultSet rs = null;
        try{
            
            String consulta = "select * from mochila where fk_objeto=? and fk_personaje=?";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, objeto);
            pst.setInt(2, personaje);
            rs = pst.executeQuery();
        
            if(rs.next()){
                return true;
            }
            
        }catch(SQLException e){
            System.err.println("Error: "+e);
        }finally {
            try {
                 if(getConexion()!=null)getConexion().close();
                 if(pst!=null)pst.close();
                 if(rs!=null) rs.close();
            } catch (Exception e) {
                System.err.println("Error: "+e);
            }
        }
        
        return false;
    }
    
    public boolean usarObj(int objeto, int personaje){
        
        PreparedStatement pst = null;
          
          try{
              String consulta = "update mochila set cantidad= cantidad-1 where fk_objeto= ? and fk_personaje= ?";
              pst = getConexion().prepareStatement(consulta);
              pst.setInt(1, objeto);
              pst.setInt(2, personaje);
              
              if(pst.executeUpdate()==1){
                return true;
              }
          }catch(SQLException e){
              System.err.println("Error: "+e);
          }finally{
               try {
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
            } catch (Exception e) {
                System.err.println("Error: \n"+e);
            }
        }
        
        return false;
    }
    

    public boolean comprarObj(int objeto, int personaje, int Cantidad){
    
          PreparedStatement pst = null;
          
          try{
              String consulta = "update mochila set cantidad= cantidad+? where fk_objeto= ? and fk_personaje= ?";
              pst = getConexion().prepareStatement(consulta);
              pst.setInt(1, Cantidad);
              pst.setInt(2, objeto);
              pst.setInt(3, personaje);
              
              if(pst.executeUpdate()==1){
                return true;
              }
          }catch(SQLException e){
              System.err.println("Error: "+e);
          }finally{
               try {
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
            } catch (Exception e) {
                System.err.println("Error: \n"+e);
            }
        }
        
        return false;
    }
         
    public boolean regcomprar(int objeto, int personaje, int Cantidad){
        
        PreparedStatement pst = null;
        
        try {
            String consulta = "insert into mochila (fk_objeto, fk_personaje, cantidad) values (?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, objeto);
            pst.setInt(2, personaje);
            pst.setInt(3, Cantidad);
            
            if(pst.executeUpdate()==1){
                return true;
            }
        } catch (SQLException e) {
            System.err.println("Error: "+e);
        }finally{
            try {
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
            } catch (Exception e) {
                System.err.println("Error: \n"+e);
            }
        }
        
        return false;
    }
	
    public int precio (int objeto){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String consulta = "select precio from bazares where id= ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, objeto);
            rs = pst.executeQuery();
            
            if(rs.next()){
                return rs.getInt(1);
            }        
        }catch(Exception e){System.err.println("Error:\n"+e);
        }finally{
            try{
                if(getConexion()!=null)getConexion().close();
                if(pst!=null)pst.close();
                if(rs!=null)rs.close();
            }catch(Exception e){}
        }
        return 0;
    }
    
    public int CantObj (int objeto, int personaje){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String consulta = "select cantidad from mochila where fk_objeto= ? and fk_personaje = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, objeto);
            pst.setInt(2, personaje);
            rs = pst.executeQuery();
            
            if(rs.next()){
                return rs.getInt(1);
            }
            
        }catch(SQLException e){System.err.println("Error:\n"+e);
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
                if(rs!=null) rs.close();
            }catch(Exception e){System.err.println("Error:\n"+e);}
        }
        return 0;
    }
    
    /*public int getCant(){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String consulta = "select count(*) from bazares";
            pst = getConexion().prepareStatement(consulta);
            rs = pst.executeQuery(consulta);
            
            if(rs.next()){
                return rs.getInt(1);
            }
        }catch(SQLException e){System.err.println("Error:\n"+e);
        }finally{
            try{
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
                if(rs!=null) rs.close();
            }catch(Exception e){System.err.println("Error:\n"+e);}
        
        }
        
        return 0;
    }
    
    public String getUrl(int objeto){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{

            String consulta = "select imagen from bazares where id = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, objeto);
            rs = pst.executeQuery();
            if(rs.next()){
                return rs.getString(1);
            }              
            
            
        }catch(SQLException e){System.err.println("Error:\n"+e);
        }finally{
            try{
                if (getConexion()!=null) getConexion().close();
                if (pst!=null) pst.close();
                if (rs!=null) rs.close();
            }catch(Exception e){System.err.println("Error:\n"+e);}
        }
        
        return null;
    }
    
    public static void main(String[] args){
        Consulta con = new Consulta();
        System.out.println(con.usarObj(6, 1));
    }*/
}
