package it.unical.mat.webPizza.daoImpl;

import it.unical.mat.webPizza.dao.PizzaIngredientsDAO;
import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.domain.PizzaIngredients;
import it.unical.mat.webPizza.util.HibernateUtil;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Hibernate;
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
			
//			Query query=session.createQuery("DELETE FROM PizzaIngredients WHERE id=:id");
//			query.setParameter("id", id);
//			
//			result=query.executeUpdate();
			Query query=session.createSQLQuery("DELETE FROM PIZZA_INGREDIENTS WHERE INGREDIENTS_ID=:id");
			query.setParameter("id", id);
			
			result=query.executeUpdate();
			
			PizzaIngredients ingredient= (PizzaIngredients) session.load(PizzaIngredients.class, id);
			if(ingredient!=null){
				session.delete(ingredient);
				session.flush();
				result=1;
			}
			
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

	@Override
	public boolean updateIngredients(Long id, String name, double cost) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		boolean result = false;
		try {
			transaction = session.beginTransaction();
			
			PizzaIngredients ingredient= (PizzaIngredients) session.load(PizzaIngredients.class, id);
			if(ingredient != null){
				ingredient.setCost(cost);
				ingredient.setName(name);
				
				session.update(ingredient);
				result = true;
			}
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
			result=false;
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public PizzaIngredients getIngredient(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		PizzaIngredients result = new PizzaIngredients();
		try {
			transaction = session.beginTransaction();
			
			System.out.println(id);
			result= (PizzaIngredients) session.createQuery("FROM PizzaIngredients WHERE id=?").setLong(0, id).uniqueResult();
			
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
