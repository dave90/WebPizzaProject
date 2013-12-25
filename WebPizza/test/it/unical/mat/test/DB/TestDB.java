package it.unical.mat.test.DB;
import static org.junit.Assert.*;
import it.unical.mat.webPizza.dao.AdminDAO;
import it.unical.mat.webPizza.daoImpl.AdminDAOImpl;


public class TestDB {

	@org.junit.Test
	public void insertAdmin() {
		AdminDAO adminDAO =new AdminDAOImpl();
		Long id1=adminDAO.insertAdmin("Ciccio", "Pasticcio", "ciccio50", "123stella");
		Long id2=adminDAO.insertAdmin("Maccio", "Capotonda", "maccio70", "123stella");
		assertTrue(id1==null || id2==null);
	}

}
