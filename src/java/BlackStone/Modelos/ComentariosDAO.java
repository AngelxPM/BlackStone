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
    
    public void insertar(ComentariosPOJO cPOJO) throws SQLException, IOException{
        
        try{
            
            abrirConexion();
            
            String nombre = cPOJO.getNombre();
            String comentario = cPOJO.getComentario();
                        
            String sql = "insert into COMENTARIOS values ('" + nombre + "', ' " + comentario + "')";
            
            Statement stmt = conexion.createStatement();
            stmt.executeUpdate(sql);
            
            cerrarConexion();
            
        }catch(SQLException x){
            
            
        }
        
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
                
                
                catalagoProd.add(prod);
            
            }
            
            cerrarConexion();
            
        }catch(SQLException x){
            
            
        }
        
        return catalagoProd;
    }
    /*
    public ArrayList<ComentariosPOJO> buscar(ComentariosPOJO cPOJO) throws SQLException, IOException{
        
        ResultSet mensajes;
        ArrayList<ComentariosPOJO> beans = new ArrayList();
        
        String nombre = cPOJO.getNombre();
        String comentario = cPOJO.getComentario();
        
        try{
            
            abrirConexion();
                        
            String sql = "select * from COMENTARIOS where NOMBRE like '%"    + nombre + "%' and COMENTARIOS like '%" + comentario + "%'";
            
            Statement stmt = conexion.createStatement();
            mensajes =stmt.executeQuery(sql);
            
            while(mensajes.next()){
                
                ComentariosPOJO dto = new ComentariosPOJO();
                dto.setNombre(mensajes.getString("Nombre"));
                dto.setComentario(mensajes.getString("Comentarios"));
                
                beans.add(dto);
            
            }
            
            cerrarConexion();
            
        }catch(SQLException x){
            
            
        }
        
        return beans;
        
    }
*/
    
}