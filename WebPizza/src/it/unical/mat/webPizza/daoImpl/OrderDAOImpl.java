package it.unical.mat.webPizza.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unical.mat.webPizza.dao.OrderDAO;
import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.domain.Order;
import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.domain.PizzaChef;
import it.unical.mat.webPizza.util.HibernateUtil;

public class OrderDAOImpl implements OrderDAO {

	@Override
	public Long insertOrder(String status, List<Pizza> pizzas, Client client,
			PizzaChef chef) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Long id = null;
		try {
			transaction = session.beginTransaction();
			
			Order order=new Order();
			order.setStatus(status);
			order.setClient(client);
			
			id = (Long) session.save(order);
			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		
		return id;
	}

}
