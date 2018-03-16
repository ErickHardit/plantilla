/**
 * 
 */
package mx.com.aquiladevops.plantilla.jee60x000.controller;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import mx.com.aquiladevops.plantilla.jee60x000.controller.ejb.LibroEJB;

/**
 * @author Erick Hardit Velazquez del Rosario
 *
 */
@ManagedBean
@SessionScoped
public class LibroManagedBean {

	@EJB
	private LibroEJB libroEJB;
	
	private String nombre;
	
	
	public LibroManagedBean() {
		
	}
	
	public void consultar() {
		libroEJB.consultar();
	}
	

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
	
}
