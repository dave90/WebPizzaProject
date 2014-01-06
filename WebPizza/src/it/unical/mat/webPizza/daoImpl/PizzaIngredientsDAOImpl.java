package it.unical.mat.webPizza.daoImpl;

import it.unical.mat.webPizza.dao.PizzaIngredientsDAO;
import it.unical.mat.webPizza.domain.PizzaIngredients;
import it.unical.mat.webPizza.util.HibernateUtil;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class PizzaIngredientsDAOImpl implements PizzaIngredientsDAO {

	@Override
	public Long insertIngredient(String name, double cost) {
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Long id = null;
		try {
			transaction = session.beginTransaction();
			
			PizzaIngredients ingredients=new PizzaIngredients();
			
			ingredients.setName(name);
			ingredients.setCost(cost);
			
			
			id = (Long) session.save(ingredients);
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
	public int deleteIngredient(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		int result = 0 ;
		try {
			transaction = session.beginTransaction();
			
			Query query=session.createQuery("DELETE FROM PizzaIngredients WHERE id=:id");
			query.setParameter("id", id);
			
			result=query.executeUpdate();
			
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
	public List<PizzaIngredients> getAllIngredients() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		List<PizzaIngredients> result = new ArrayList<PizzaIngredients>() ;
		try {
			transaction = session.beginTransaction();
			
			result=session.createQuery("FROM PizzaIngredients").list();
			
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
