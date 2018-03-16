/**
 * 
 */
package mx.com.aquiladevops.plantilla.jee60x000.controller.ejb;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

import mx.com.aquiladevops.plantilla.jee60x000.model.Libro;

/**
 * @author Erick Hardit Velazquez del Rosario
 *
 */
@Stateless
public class LibroEJB {

	@PersistenceUnit(unitName = "jee60x000PU")
	private EntityManagerFactory emf;
	
	public List<Libro> consultar() {
		String jpql = "from Libro";
		Query query = emf.createEntityManager().createQuery(jpql);
		return query.getResultList();
	}

}
