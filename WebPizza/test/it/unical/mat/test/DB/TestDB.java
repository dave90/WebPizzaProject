package it.unical.mat.test.DB;
import static org.junit.Assert.*;
import it.unical.mat.webPizza.dao.AdminDAO;
import it.unical.mat.webPizza.dao.ClientDAO;
import it.unical.mat.webPizza.dao.OrderDAO;
import it.unical.mat.webPizza.daoImpl.AdminDAOImpl;
import it.unical.mat.webPizza.daoImpl.ClientDAOImpl;
import it.unical.mat.webPizza.daoImpl.OrderDAOImpl;
import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.domain.Order;


public class TestDB {

	@org.junit.Test
	public void insertAdmin() {
		AdminDAO adminDAO =new AdminDAOImpl();
		Long id1=adminDAO.insertAdmin("Ciccio", "Pasticcio", "ciccio50", "123stella");
		Long id2=adminDAO.insertAdmin("Maccio", "Capotonda", "maccio70", "123stella");
		assertFalse(id1==null || id2==null);
		
		adminDAO.removeAllAdmin();
	}
	
//	@org.junit.Test
	public void insertClient() {
		ClientDAO clientDAO=new ClientDAOImpl();
		Long id1=clientDAO.insertClient("Anna", "Pannocchia", "annapannocchia", "123243","123stella");
		assertFalse(id1==null);
		
	}
	
	@org.junit.Test
	public void insertOrder(){
		OrderDAO orderDAO=new OrderDAOImpl();
		insertClient();
		Client c=new ClientDAOImpl().getClient((long)1);
		Long id1=orderDAO.insertOrder(Order.S_NOT_ASSIGNED, null, c, null);
		assertFalse(id1==null);
	}

}
