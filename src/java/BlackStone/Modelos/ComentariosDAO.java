/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BlackStone.Modelos;

import java.io.IOException;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Angel Adolfo Pacheco Mazuca 1656991
 */
public class ComentariosDAO {
    
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
    
    public ArrayList<Producto> catalago() throws SQLException, IOException{
        
        ResultSet mensajes;
        ArrayList<Producto> catalagoProd = new ArrayList();
        
        try{
            
            abrirConexion();
                        
            String sql = "select * from PRODUCTO";
            
            Statement stmt = conexion.createStatement();
            mensajes =stmt.executeQuery(sql);
            
            while(mensajes.next()){
                
                Producto prod = new Producto();
                
                prod.setIdProducto(Integer.parseInt(mensajes.getString("IDPRODUCTO")));
                prod.setNombre(mensajes.getString("NOMBREPRODUCTO"));
                prod.setDescripcion(mensajes.getString("DESCRIPCION"));
                prod.setPrecioUnitario(Double.parseDouble(mensajes.getString("PRECIOUNITARIO")));
                prod.setIdCategoria(Integer.parseInt(mensajes.getString("IDCATEGORIA")));
                prod.setStock(Integer.parseInt(mensajes.getString("STOCK")));
                prod.setUbicacion(mensajes.getString("UBICACION"));
                catalagoProd.add(prod);
            
            }
            
            cerrarConexion();
            
        }catch(SQLException x){
            
            
        }
        
        return catalagoProd;
    }
    
    public ArrayList<Producto> ProductoMore(String name) throws SQLException, IOException{
        
        ResultSet mensajes;
        ArrayList<Producto> catalagoProd = new ArrayList();
        
        try{
            
            abrirConexion();
                        
            String sql = "select * from PRODUCTO Where IDPRODUCTO = "+name+"";
            
            Statement stmt = conexion.createStatement();
            mensajes =stmt.executeQuery(sql);
            
            while(mensajes.next()){
                
                Producto prod = new Producto();
                
                prod.setIdProducto(Integer.parseInt(mensajes.getString("IDPRODUCTO")));
                prod.setNombre(mensajes.getString("NOMBREPRODUCTO"));
                prod.setDescripcion(mensajes.getString("DESCRIPCION"));
                prod.setPrecioUnitario(Double.parseDouble(mensajes.getString("PRECIOUNITARIO")));
                prod.setIdCategoria(Integer.parseInt(mensajes.getString("IDCATEGORIA")));
                prod.setStock(Integer.parseInt(mensajes.getString("STOCK")));
                prod.setUbicacion(mensajes.getString("UBICACION"));
                
                catalagoProd.add(prod);
            
            }
            
            cerrarConexion();
            
        }catch(SQLException x){
            
            
        }
        
        return catalagoProd;
    }

    
}