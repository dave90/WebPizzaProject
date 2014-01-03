package it.unical.mat.webPizza.dao;

import it.unical.mat.webPizza.domain.Administrator;

public interface AdminDAO {
	
	Long insertAdmin(String name,String surname,String user, String hpwd);
	public Administrator getClient(Long id);
	//return the number of row deleted
	int removeAllAdmin();

}
