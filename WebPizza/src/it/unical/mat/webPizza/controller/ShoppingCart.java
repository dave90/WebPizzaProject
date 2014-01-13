package it.unical.mat.webPizza.controller;

import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.util.HibernateUtil;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShoppingCart implements Serializable{
	Map<Pizza, Integer> pizzaQuantity= new HashMap<Pizza, Integer>();
	private int totalprice;
	
	public Map<Pizza, Integer> getPizzaQuantity() {
		return pizzaQuantity;
	}

	public void setPizzaQuantity(Map<Pizza, Integer> pizzaQuantity) {
		this.pizzaQuantity = pizzaQuantity;
	}

	void insertPizza(Long idPizza,Pizza pizzaDB,int quantity){
		HibernateUtil.getSessionFactory().openSession().update(pizzaDB);
		Pizza pizza=null;
		for(Pizza p:pizzaQuantity.keySet()){
			if(p.getId()==idPizza){
				int qty=pizzaQuantity.get(p);
				pizzaQuantity.remove(p);
				pizzaQuantity.put(p, qty+=quantity);
				pizza=p;
				updateTotalprice();
				return;
			}
		}
		if(pizza==null)
			pizza=pizzaDB;
		
		pizzaQuantity.put(pizza,quantity);
		updateTotalprice();
	}
	
	double updateTotalprice(){
		totalprice=0;
		for(Pizza p:pizzaQuantity.keySet()){
			totalprice+=p.getPrize()*pizzaQuantity.get(p);
		}
		return totalprice;
	}
	
	String getTableBody(){
		String tableToAppend="";
		for(Pizza p:pizzaQuantity.keySet()){
			tableToAppend+="<tr>"+"<td>"+p.getName()+"</td>"+"<td>"+pizzaQuantity.get(p)+"</td>"+"<td>&euro;"+p.getPrize()*pizzaQuantity.get(p)+"</td>"+"</tr>";
		}
		tableToAppend+="<tr>"+"<th></th><th>Total</th>"+"<th>&euro;"+totalprice+"</th></tr>";
		
		// aggiungo questa parte per modificare in modo dinamico con jquery anche nell'header il carrello
		tableToAppend+="*<i class='icon-shopping-cart'></i> Items - "+totalprice+"&euro;";
		return tableToAppend;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	
	public List<Pizza> getPizzaList(){
		ArrayList<Pizza> pizza=new ArrayList<Pizza>();
		for(Pizza p:pizzaQuantity.keySet())
			for(int i=0;i<pizzaQuantity.get(p);i++)
				pizza.add(p);
		
		return pizza;
	}
	
	public int getQuantity(Long id){
		for(Pizza p:pizzaQuantity.keySet())
			if(p.getId()==id)
				return pizzaQuantity.get(p);
		
		return 0;
	}
	
	public double updateQuantity(Long id,int quantity){
		for(Pizza p:pizzaQuantity.keySet())
			if(p.getId()==id){
				 pizzaQuantity.put(p,quantity);
				 updateTotalprice();
				 return p.getPrize()*quantity;
			}
		
		return 0;
	}
	
	public void removePizza(Long id){
		Pizza pizzaRemove=null;
		for(Pizza p:pizzaQuantity.keySet())
			if(p.getId()==id){
				 pizzaRemove=p;
			}
		
		if(pizzaRemove!=null)
			pizzaQuantity.remove(pizzaRemove);
		
		updateTotalprice();
			
	}

}
