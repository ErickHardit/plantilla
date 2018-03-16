/**
 * 
 */
package mx.com.aquiladevops.plantilla.jee60x000.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

/**
 * @author Erick Hardit Velazquez del Rosario
 *
 */
@Entity
@NamedQuery(name = "Libro.consultarPorTitulo", 
			query = "SELECT model FROM Libro model WHERE model.titulo = :ptitulo")
public class Libro {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Column(nullable = false)
	private String titulo;
	
	private Float precio;
	
	@Column(length = 2000)
	private String descripcion;
	
	private String isbn;
	
	private Integer numPaginas;
	
	private Boolean ilustraciones;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Float getPrecio() {
		return precio;
	}

	public void setPrecio(Float precio) {
		this.precio = precio;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public Integer getNumPaginas() {
		return numPaginas;
	}

	public void setNumPaginas(Integer numPaginas) {
		this.numPaginas = numPaginas;
	}

	public Boolean getIlustraciones() {
		return ilustraciones;
	}

	public void setIlustraciones(Boolean ilustraciones) {
		this.ilustraciones = ilustraciones;
	}
}
