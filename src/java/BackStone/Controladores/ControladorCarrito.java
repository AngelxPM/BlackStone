/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BackStone.Controladores;

<<<<<<< HEAD
import BlackStone.Modelos.ProductoDAO;
import BlackStone.Modelos.ProductoPOJO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
=======
import BlackStone.Modelos.ComentariosDAO;
import BlackStone.Modelos.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
>>>>>>> origin/master
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
<<<<<<< HEAD
 * @author alang
 */
=======
 * @author AngelxPM
 */
@WebServlet(name = "ControladorCarrito", urlPatterns = {"/ControladorCarrito"})
>>>>>>> origin/master
public class ControladorCarrito extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
<<<<<<< HEAD
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        HttpSession s = request.getSession();
        int idProd = Integer.parseInt(request.getParameter("producto"));
        
        ProductoDAO pdao = new ProductoDAO();
        
        ProductoPOJO pojo = new ProductoPOJO();
        
        pojo.setProducto(idProd);
        
        pdao.agregar(pojo);
        
        
        
=======
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            
            HttpSession session = request.getSession();
            RequestDispatcher dispatcher = null;
            
            dispatcher = request.getRequestDispatcher("Inicio.jsp");
            
            String accion = request.getParameter("accion");
            
            ComentariosDAO cDAO = new ComentariosDAO();
            
            ArrayList<Producto> Productos = cDAO.ProductoMore(accion);
            session.setAttribute("Productos", Productos);
            response.sendRedirect("Prueba.jsp"); 
            
            
        }
>>>>>>> origin/master
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
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorCarrito.class.getName()).log(Level.SEVERE, null, ex);
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
<<<<<<< HEAD
        processRequest(request, response);
=======
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ControladorCarrito.class.getName()).log(Level.SEVERE, null, ex);
        }
>>>>>>> origin/master
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
