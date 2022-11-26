/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Date;

/**
 *
 * @author Edwing
 */

public class Libro {
    
    private int codigo;
    private String nombre;
    private String autor;
    private String fecha;
    private int pasta;

    
    public Libro(int codigo, String nombre, String autor, String fecha, int pasta){
        this.codigo=codigo;
        this.nombre=nombre;
        this.autor=autor;
        this.fecha=fecha;
        this.pasta=pasta;        
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getPasta() {
        return pasta;
    }

    public void setPasta(int pasta) {
        this.pasta = pasta;
    }
    
}
