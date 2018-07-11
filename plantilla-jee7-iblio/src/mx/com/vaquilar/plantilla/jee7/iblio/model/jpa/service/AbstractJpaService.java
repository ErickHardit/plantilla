/**
 * 
 */
package mx.com.vaquilar.plantilla.jee7.iblio.model.jpa.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * @author ErickHardit
 *
 */
public class AbstractJpaService<T> {

	@PersistenceContext(unitName = "plantilla-jee7-iblio")
	protected EntityManager entityManager;

	private Class<T> entityClass;

	public AbstractJpaService() {
	}

	public AbstractJpaService(Class<T> entityClass) {
		this.entityClass = entityClass;
	}

	public T persist(T entity) {
		entityManager.persist(entity);
		return entity;
	}

	public T findById(Long id) {
		return entityManager.find(entityClass, id);
	}

	public void remove(T entity) {
		entityManager.remove(entityManager.merge(entity));
	}

	public T merge(T entity) {
		return entityManager.merge(entity);
	}

}
