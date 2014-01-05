package it.unical.mat.webPizza.dao;

import it.unical.mat.webPizza.domain.Client;


public interface ClientDAO {
	
	public Long insertClient(String name,String surname,String user,String phone, String hpwd);
	public Client getClient(Long id);
	public Client getClient(String usr,String hpwd);

}
