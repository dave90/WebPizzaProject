package it.unical.mat.webPizza.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unical.mat.webPizza.dao.PizzaDAO;
import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.domain.PizzaIngredients;
import it.unical.mat.webPizza.util.HibernateUtil;

public class PizzaDAOImpl implements PizzaDAO {

	@Override
	public Long insertPizza(String name, List<PizzaIngredients> ingredients,
			double discount) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Long id = null;
		try {
			transaction = session.beginTransaction();
			
			Pizza pizza=new Pizza();
			
			pizza.setName(name);
			pizza.setDiscount(discount);
			pizza.setIngredients(ingredients);
			
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
			for(Pizza p:result)
				Hibernate.initialize(p.getIngredients());
			
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		
		return result;
	}

}