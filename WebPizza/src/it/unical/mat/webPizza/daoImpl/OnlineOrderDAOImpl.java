package it.unical.mat.webPizza.daoImpl;

import it.unical.mat.webPizza.dao.OnlineOrderDAO;
import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.domain.Deliveryman;
import it.unical.mat.webPizza.domain.OnlineOrder;
import it.unical.mat.webPizza.domain.Order;
import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.domain.PizzaQuantity;
import it.unical.mat.webPizza.util.HibernateUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class OnlineOrderDAOImpl implements OnlineOrderDAO{

	@Override
	public Long insertOrder(String date,String status, List<PizzaQuantity> pizzas, boolean paid,
			Client client, String deliveryStatus, String address) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Long id = null;
		try {
			transaction = session.beginTransaction();
			
			OnlineOrder order=new OnlineOrder();
			order.setPizzas(pizzas);
			order.setPaid(paid);
			order.setStatus(status);
			order.setClient(client);
			order.setDeliveryStatus(deliveryStatus);
			order.setAddress(address);
			order.setDate(date);
			
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

	@Override
	public int updateDelivery(Long id, Deliveryman deliveryman) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		int result = 0;
		try {
			transaction = session.beginTransaction();
			
			OnlineOrder order=(OnlineOrder) session.get(OnlineOrder.class, id);
			order.setDeliveryman(deliveryman);
			session.update(order);
			
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
	public int updateDeliveryStatus(Long id, String deliveryStatus) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		int result = 0;
		try {
			transaction = session.beginTransaction();
			
			OnlineOrder order=(OnlineOrder) session.get(OnlineOrder.class, id);
			order.setDeliveryStatus(deliveryStatus);
			session.update(order);
			
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
	public String getOrderDeliveryStatus(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		String result = "-1";
		try {
			transaction = session.beginTransaction();
			
			OnlineOrder order=(OnlineOrder) session.get(OnlineOrder.class, id);
			result=order.getDeliveryStatus();
			
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
	public List<OnlineOrder> getNotDeliveryManAssignedOrder() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		List<OnlineOrder> result = new ArrayList<OnlineOrder>();
		try {
			transaction = session.beginTransaction();
			
			result=session.createQuery("FROM OnlineOrder WHERE deliveryman is null").list();
			
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
	public String getDeliveryManPositionByOrder(Long idOrder) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		String result = null;
		try {
			transaction = session.beginTransaction();
			
			OnlineOrder order=(OnlineOrder) session.get(OnlineOrder.class, idOrder);
			
			if(order.getDeliveryman()!=null )
				if(order.getDeliveryman().getLatitude()!=null && order.getDeliveryman().getLongitude()!=null)
					result=order.getDeliveryman().getLatitude()+";"+order.getDeliveryman().getLongitude();
			
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
	public List<OnlineOrder> getdeliveryManOrder(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		List<OnlineOrder> result = new ArrayList<OnlineOrder>();
		try {
			transaction = session.beginTransaction();
			
			Query query=session.createQuery("FROM OnlineOrder WHERE deliveryman.id=:id");
			query.setParameter("id", id);
			result=query.list();
			
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
