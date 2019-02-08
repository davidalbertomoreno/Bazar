/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mazamo Dafter Dark
 */
public class cargarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cargarUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cargarUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
		Consultas C = new Consultas();
		HttpSession HS = request.getSession();
		String usuario = (String)HS.getAttribute("usuario");
		if(usuario == null){
		response.sendRedirect("index.jsp");
		}
		String character;
		int i = 1;
        ResultSet RS;
        try {
			RS = C.cargarPersonaje(usuario);
            RS.next();
			character = RS.getString(1);
			HS.setAttribute("personaje", RS.getString(1));
			request.setAttribute("nivel", RS.getString(2));
			request.setAttribute("genero", RS.getString(3));
			request.setAttribute("raza", RS.getString(4));
			request.setAttribute("equipo", RS.getString(5));
			request.setAttribute("color_ojos", RS.getString(6));
			request.setAttribute("color_pelo", RS.getString(7));
			//System.out.println(RS.getBoolean(8)+" "+RS.getBoolean(9)+" "+RS.getBoolean(10));
			if(RS.getBoolean(8)){
				request.setAttribute("medalla1", "true");
			}
			else{
				request.setAttribute("medalla1", "false");
			}
			if(RS.getBoolean(9)){
				request.setAttribute("medalla2", "true");
			}
			else{
				request.setAttribute("medalla2", "false");
			}
			if(RS.getBoolean(10)){
				request.setAttribute("medalla3", "true");
			}
			else{
				request.setAttribute("medalla3", "false");
			}
			request.setAttribute("pokemonedas", RS.getString(11));
			request.setAttribute("experiencia", RS.getString(12));
			RS = C.cargarPokemons(usuario, character);
			while(RS.next()){
				if(RS.getBoolean(9)){
				request.setAttribute("pkmn"+i, RS.getString(1));
				i++;
				}
			}
			while(i <= 6){
				request.setAttribute("pkmn"+i,"pic/PKball.png");
				i++;
			}
			request.getRequestDispatcher("perfil.jsp").forward(request, response);
        } catch (SQLException ex) {
            System.err.println("Error: "+ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
