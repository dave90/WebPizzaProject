package it.unical.mat.webPizza.dao;

import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.domain.PizzaChef;

import java.util.List;

public interface OrderDAO {

	public Long insertOrder(String status,List<Pizza> pizzas,boolean paid,Client client,PizzaChef chef);
	public Long insertOrder(String status,List<Pizza> pizzas,boolean paid,Client client);
	public int updateStatus(Long id,String status);
	public int updateChef(Long id,PizzaChef chef);
	
}
