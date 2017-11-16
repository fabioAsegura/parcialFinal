/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ActivoDAO;
import Model.Activo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author anfeg
 */
public class Activoo extends HttpServlet {

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
            out.println("<title>Servlet AñadirActivos</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AñadirActivos at " + request.getContextPath() + "</h1>");
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
        try {
            ActivoDAO obj = new ActivoDAO();

            ArrayList<Activo> lista = (ArrayList<Activo>) obj.getAllActivo();

            request.setAttribute("listaActivos", lista);

            request.getRequestDispatcher("Activos.jsp").forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(Activoo.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id_activo = Integer.parseInt(request.getParameter("idActivo"));
            String tipo = (String) request.getParameter("tipo");
            String fabricante = (String) request.getParameter("fabricante");
            String fecha_compra = (String) request.getParameter("fechaC");
            String mantenimiento = (String) request.getParameter("mantenimiento");
            String estado = (String) request.getParameter("estado");
            String prestado = (String) request.getParameter("prestado");
            int calificacion = Integer.parseInt(request.getParameter("calificacion"));

            ActivoDAO dao = new ActivoDAO();
            Activo tab = new Activo(id_activo, tipo, fabricante, fecha_compra, mantenimiento, estado, prestado, calificacion);

            dao.addActivo(tab);

            response.sendRedirect("Activoo");

        } catch (SQLException ex) {
            Logger.getLogger(Activoo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
