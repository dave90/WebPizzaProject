package it.mat.unical.webPizza.domain;

import java.util.ArrayList;
import java.util.List;

public class Pizza {
	
	private Long id;
	
	private String name;
	
	private List<PizzaIngredients> ingredients=new ArrayList<PizzaIngredients>();
	
	private double discount;
	
	public Pizza() {
	}
	
	public double getPrize(){
		
		double prize=0;
		
		for(PizzaIngredients i:ingredients)
			prize+=i.getCost();
		
		prize-=discount;
		
		return prize;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<PizzaIngredients> getIngredients() {
		return ingredients;
	}

	public void setIngredients(List<PizzaIngredients> ingredients) {
		this.ingredients = ingredients;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

}
