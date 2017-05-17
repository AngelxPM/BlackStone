/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BlackStone.Modelos;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alang
 */
public class ProductoDAO {
    private Connection conexion;
    
    private void abrirConexion() throws SQLException, IOException{
        
        String URI = "jdbc:derby://localhost:1527/BlackStone";
        String username = "BackStoneAdmin";
        String password = "BackStoneAdmin";
        
        conexion = DriverManager.getConnection(URI,username,password);
        
    }

    private void cerrarConexion() throws SQLException{
        
        conexion.close();
        
    }

    public void agregar(ProductoPOJO pojo) throws SQLException{
    
        try{
            abrirConexion();
            String sqlInsert = "insert into CARRITO values ('"+ pojo.getIdProd() +"')";
            Statement stmt = conexion.createStatement();
            stmt.executeUpdate(sqlInsert);
            cerrarConexion();
        } 
        catch (IOException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public ArrayList ver(ProductoPOJO poj){
    
        ResultSet regis;
        
        ArrayList<ProductoPOJO> productos = new ArrayList();
        try{
            abrirConexion();
            String sqlBuscar = "select * from CARRITO";
            Statement stmt = conexion.createStatement();
            ResultSet producto = stmt.executeQuery(sqlBuscar);
            while(producto.next()){
                int idProd = producto.getInt("Producto");
                ProductoPOJO prods = new ProductoPOJO();
                prods.setProducto(idProd);
                productos.add(prods);
            }
        cerrarConexion();
        }
        catch(Exception ex){
        
        }
        return productos;
    }
}
