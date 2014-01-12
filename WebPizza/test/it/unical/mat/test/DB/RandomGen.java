package it.unical.mat.test.DB;

import it.unical.mat.webPizza.daoImpl.ClientDAOImpl;
import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.domain.PizzaQuantity;
import it.unical.mat.webPizza.service.OrderManager;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

import org.hibernate.Hibernate;

public class RandomGen {
	
	public static void main(String[] args) {
		OrderManager manager=new OrderManager();
		Client c=new ClientDAOImpl().getClient((long)1);
		Pizza pizza1=manager.getLazyPizza((long)51);
		Pizza pizza2=manager.getLazyPizza((long)52);
		List<PizzaQuantity> pq=new ArrayList<PizzaQuantity>();
		PizzaQuantity pq1=new PizzaQuantity();
		pq1.setPizza(pizza1);
		pq1.setQuantity(2);
		pq.add(pq1);
		PizzaQuantity pq2=new PizzaQuantity();
		pq2.setPizza(pizza2);
		pq2.setQuantity(2);
		pq.add(pq2);
		manager.insertOrder("", pq, false, c);
		
	}
	
	static Random r =new Random();
	static int maxLenght=20;
	
	static int getRandomNumber(){
		return r.nextInt(maxLenght);
	}
	
	static char[] symbols={'a','b','c','d','e','f','g','1','2','5','8'};
	static String getRandomString(){
		String string=new String();
		for(int i=0;i<maxLenght;i++)
			string+=symbols[r.nextInt(symbols.length)];
		return string;
	}

}
