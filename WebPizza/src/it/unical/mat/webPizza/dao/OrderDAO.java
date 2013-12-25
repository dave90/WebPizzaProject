package it.unical.mat.webPizza.dao;

import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.domain.PizzaChef;

import java.util.List;

public interface OrderDAO {

	public Long insertOrder(String status,List<Pizza> pizzas,Client client,PizzaChef chef);
	
}
