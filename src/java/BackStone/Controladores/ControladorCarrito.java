
package BackStone.Controladores;


import BlackStone.Modelos.ProductoDAO;
import BlackStone.Modelos.ProductoPOJO;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
<<<<<<< HEAD
 * @author alang
 *//*
 @Alan Gerardo Gonzalez Lopez
 */
@WebServlet(name = "ControladorCarrito", urlPatterns = {"/ControladorCarrito"})

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
        String action = request.getParameter("action");
        ProductoDAO pdao = new ProductoDAO();
        
        ProductoPOJO pojo = new ProductoPOJO();
        
        pojo.setProducto(idProd);
        
        if(action.equals("agregar")){
            
            pdao.agregar(pojo);
            
            ArrayList <ProductoPOJO> productos = pdao.ver(pojo);
            s.setAttribute("Productos", productos);
            response.sendRedirect("Carrito.jsp");
            
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
