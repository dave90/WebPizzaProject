package it.unical.mat.webPizza.controller;

import it.unical.mat.webPizza.domain.Pizza;

import java.util.HashMap;
import java.util.Map;

public class ShoppingCart {
	Map<Pizza, Integer> pizzaQuantity= new HashMap<Pizza, Integer>();
	private int totalprice;
	
	public Map<Pizza, Integer> getPizzaQuantity() {
		return pizzaQuantity;
	}

	public void setPizzaQuantity(Map<Pizza, Integer> pizzaQuantity) {
		this.pizzaQuantity = pizzaQuantity;
	}

	void insertPizza(Long idPizza,Pizza pizzaDB,int quantity){
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
			tableToAppend+="<tr>"+"<td>"+p.getName()+"</td>"+"<td>"+pizzaQuantity.get(p)+"</td>"+"<td>"+p.getPrize()*pizzaQuantity.get(p)+"</td>"+"</tr>";
		}
		tableToAppend+="<tr>"+"<th></th><th>Total</th>"+"<th>"+totalprice+"</th></tr>";
		return tableToAppend;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	

}
