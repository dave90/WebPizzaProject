package it.unical.mat.webPizza.daoImpl;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import it.unical.mat.webPizza.dao.AdminDAO;
import it.unical.mat.webPizza.domain.Administrator;
import it.unical.mat.webPizza.util.HibernateUtil;

public class AdminDAOImpl implements AdminDAO {

	@Override
	public Long insertAdmin(String name,String surname,String user, String hpwd) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		Long id = null;
		try {
			transaction = session.beginTransaction();
			
			Administrator admin=new Administrator();
			
			admin.setName(name);
			admin.setSurname(surname);
			admin.setUsername(user);
			admin.setHashPasswd(hpwd);
			
			id = (Long) session.save(admin);
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
