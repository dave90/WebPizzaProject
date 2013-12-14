package it.mat.unical.webPizza.domain;

import java.util.ArrayList;
import java.util.List;

public class Order {
	
	//State of the order
	public static int S_NOT_ASSIGNED=0;
	public static int S_ASSIGNED=1;
	public static int S_PREPARED=2;
	public static int S_READY=3;
	
	private Long id;
	
	private List<Pizza> pizzas=new ArrayList<Pizza>();
	
	private Client client;
	
	private PizzaChef pizzaiolo;
	
	public Order() {
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Pizza> getPizzas() {
		return pizzas;
	}

	public void setPizzas(List<Pizza> pizzas) {
		this.pizzas = pizzas;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public PizzaChef getPizzaiolo() {
		return pizzaiolo;
	}

	public void setPizzaiolo(PizzaChef pizzaiolo) {
		this.pizzaiolo = pizzaiolo;
	}

	public int getStatus() {
		return Status;
	}

	public void setStatus(int status) {
		Status = status;
	}

	private int Status;

}
