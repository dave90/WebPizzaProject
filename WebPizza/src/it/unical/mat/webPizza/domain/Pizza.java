package it.unical.mat.webPizza.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="PIZZA")
public class Pizza {
	
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Long id;
	
	@Column(name="NAME")
	private String name;
	
	@OneToMany(cascade = { CascadeType.ALL })
	@JoinTable(name = "PIZZA_INGREDIENTS", 
	joinColumns = { @JoinColumn(name = "PIZZA_ID") }, 
	inverseJoinColumns = { @JoinColumn(name = "INGREDIENTS_ID")})
	private List<PizzaIngredients> ingredients=new ArrayList<PizzaIngredients>();
	
	@Column(name="DISCOUNT")
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
