package mx.com.vaquilar.plantilla.jee7.iblio.model.jpa.service;

import java.io.Serializable;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import mx.com.vaquilar.plantilla.jee7.iblio.model.User;

@Stateless
@LocalBean
public class UserJpaService extends AbstractJpaService<User> implements Serializable {

	private static final long serialVersionUID = 1L;

	public UserJpaService() {
		super(User.class);
	}
	
	public User findByNameAndPassowrd(String name, String password) {
		String jpql = "SELECT o FROM User o WHERE o.name = :name AND o.password = :password";
		return (User) this.entityManager.createQuery(jpql)
			.setParameter("name", name)
			.setParameter("password", password).getSingleResult();		
	}
}
