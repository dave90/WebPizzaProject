package it.unical.mat.webPizza.daoImpl;

import java.util.List;

import it.unical.mat.webPizza.dao.ClientDAO;
import it.unical.mat.webPizza.domain.Administrator;
import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.util.HibernateUtil;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ClientDAOImpl implements ClientDAO {

	@Override
	public Long insertClient(String name, String surname, String user,
			String phone, String hpwd) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Long id = null;
		try {
			transaction = session.beginTransaction();
			
			Client client=new Client();
			
			client.setName(name);
			client.setSurname(surname);
			client.setPhoneNumber(phone);
			client.setUsername(user);
			client.setHashPasswd(hpwd);
			
			id = (Long) session.save(client);
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
	public Client getClient(Long id) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Client client = null;
		try {
			transaction = session.beginTransaction();
			
			client= (Client) session.load(Client.class, id);
			Hibernate.initialize(client);

			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return client;
	}

	@Override
	public Client getClient(String usr, String hpwd) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Client client = null;
		try {
			transaction = session.beginTransaction();
			
			Query query=session.createQuery("FROM Client WHERE username=:usr AND hashPasswd=:hpwd");
			query.setParameter("usr", usr);
			query.setParameter("hpwd", hpwd);
			List<Client> list=query.list();
			if(list.size()==1)
				client=list.get(0);

			transaction.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			session.close();
		}
		return client;
	}

}
