package it.unical.mat.webPizza.daoImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unical.mat.webPizza.dao.PizzaDAO;
import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.domain.PizzaIngredients;
import it.unical.mat.webPizza.util.HibernateUtil;

public class PizzaDAOImpl implements PizzaDAO {

	@Override
	public Long insertPizza(String name, List<PizzaIngredients> ingredients,
			double discount,Client client) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Long id = null;
		try {
			transaction = session.beginTransaction();
			
			Pizza pizza=new Pizza();
			
			pizza.setName(name);
			pizza.setDiscount(discount);
			pizza.setIngredients(ingredients);
			pizza.setClient(client);
			
			
			id = (Long) session.save(pizza);
						
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		
		return id;
	}

	@Override
	public int deletePizza(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		int result = 0 ;
		try {
			transaction = session.beginTransaction();
			
			
			Pizza pizza=(Pizza) session.get(Pizza.class, id);
			pizza.setIngredients(null);
			session.update(pizza);
			
			session.delete(pizza);
			
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		
		return result;
	}

	@Override
	public List<Pizza> getAllPizzas() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		List<Pizza> result = new ArrayList<Pizza>() ;
		try {
			transaction = session.beginTransaction();
			
			result=session.createQuery("FROM Pizza").list();
			
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		
		return result;
	}

	@Override
	public Pizza getPizza(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Pizza pizza = null;
		try {
			transaction = session.beginTransaction();
			
			pizza= (Pizza) session.load(Pizza.class, id);
			
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return pizza;
	}
	
	@Override
	public Pizza getLazyPizza(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Pizza pizza = null;
		try {
			transaction = session.beginTransaction();
			
			pizza= (Pizza) session.load(Pizza.class, id);
			
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return pizza;
	}

}
