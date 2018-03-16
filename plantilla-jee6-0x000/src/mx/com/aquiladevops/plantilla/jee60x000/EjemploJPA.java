package mx.com.aquiladevops.plantilla.jee60x000;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EjemploJPA {

	public static void main(String[] args) {
		
		EntityManagerFactory emf = 
				 Persistence.createEntityManagerFactory("jee60x000PU");
				 EntityManager em = emf.createEntityManager();
				 
	}

}
