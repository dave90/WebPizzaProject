package it.unical.mat.webPizza.dao;

public interface AdminDAO {
	
	Long insertAdmin(String name,String surname,String user, String hpwd);
	//return the number of row deleted
	int removeAllAdmin();

}
