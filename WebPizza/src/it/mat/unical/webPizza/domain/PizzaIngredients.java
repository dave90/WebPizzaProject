package it.mat.unical.webPizza.domain;

public class PizzaIngredients {
	
	private Long id;
	
	private String name;
	
	private double cost;
	
	public PizzaIngredients() {
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

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

}
