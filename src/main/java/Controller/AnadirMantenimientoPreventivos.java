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
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author anfeg
 */
public class AnadirMantenimientoPreventivos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  
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
        ArrayList activos = new ArrayList(); //posible error
        try {
            ActivoDAO a = new ActivoDAO();
            activos = a.getAllActivo();
            request.setAttribute("activos", activos);
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/AnadirMantenimientoPreventivo.jsp");
            rd.forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(AnadirMantenimientoPreventivos.class.getName()).log(Level.SEVERE, null, ex);
        } catch (URISyntaxException ex) {
            Logger.getLogger(AnadirMantenimientoPreventivos.class.getName()).log(Level.SEVERE, null, ex);
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

            response.sendRedirect("MantenimientoPreventivo");

        } catch (SQLException ex) {
            Logger.getLogger(Activoo.class.getName()).log(Level.SEVERE, null, ex);
        } catch (URISyntaxException ex) {
            Logger.getLogger(Activoo.class.getName()).log(Level.SEVERE, null, ex);
        }
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
