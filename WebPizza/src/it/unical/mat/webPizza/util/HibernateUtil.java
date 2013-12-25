package it.unical.mat.webPizza.util;

import it.unical.mat.webPizza.domain.Administrator;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static final SessionFactory sessionFactory;
	
	static {
		try {
			sessionFactory = new Configuration()
								.configure(ClassLoader.getSystemResource("resource/hibernate.cfg.xml"))
								.addPackage("it.unical.mat.webPizza.domain") 
								.addClass(Administrator.class)
//								.addAnnotatedClass(PUT CLASS)
								.buildSessionFactory();

		} catch (Throwable ex) {
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
