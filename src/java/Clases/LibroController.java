/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Edwing
 */
public class LibroController {
    
    private ConexionBaseDeDatos conectorBD;
    private Connection conexion;
    private PreparedStatement statement = null;
    private ResultSet result = null;
    
    public void abrirConexion(){
        conectorBD= new ConexionBaseDeDatos();
        conexion=conectorBD.conectar();
    }   
    
    public String guardarLibro2(Libro articulo){        
        String sql = "INSERT INTO final_progra.libro(codigo_libro, nombre, fecha_lanzamiento, autor, tipo_pasta_id)";
             sql += " VALUES(?,?,?,?,?)";              
       try{     
            abrirConexion();
            statement = conexion.prepareStatement(sql); 
            statement.setInt(1, articulo.getCodigo());
            statement.setString(2, articulo.getNombre());
            statement.setString(3, articulo.getFecha());
            statement.setString(4, articulo.getAutor());
            statement.setInt(5, articulo.getPasta());
            
                int resultado = statement.executeUpdate(); 
                if(resultado > 0){
                    return String.valueOf(resultado);
                }else{
                    return String.valueOf(resultado);
                }
        }catch(SQLException e){ 
            return e.getMessage();
        }
    }
}
