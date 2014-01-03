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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
//"`Order`" because the simple "Order" cannot be used
@Table(name="`Order`")
public class Order {
	
	//State of the order
	public static String S_NOT_ASSIGNED="0";
	public static String S_ASSIGNED="1";
	public static String S_PREPARED="2";
	public static String S_READY="3";
	
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Long id;

	@Column(name="STATUS")
	private String status;
	
	@Column(name="PAID")
	private boolean paid;

	
	@OneToMany(cascade = { CascadeType.ALL })
	@JoinTable(name = "ORDER_PIZZA", 
	joinColumns = { @JoinColumn(name = "ORDER_ID") }, 
	inverseJoinColumns = { @JoinColumn(name = "PIZZA_ID")})
	private List<Pizza> pizzas=new ArrayList<Pizza>();
	
	@ManyToOne(cascade = { CascadeType.ALL })
	@JoinTable(name = "ORDER_CLIENT", 
	joinColumns = { @JoinColumn(name = "ORDER_ID") }, 
	inverseJoinColumns = { @JoinColumn(name = "CLIENT_ID")})
	private Client client;
	
	@ManyToOne(cascade = { CascadeType.ALL })
	@JoinTable(name = "ORDER_PIZZACHEF", 
	joinColumns = { @JoinColumn(name = "ORDER_ID") }, 
	inverseJoinColumns = { @JoinColumn(name = "PIZZACHEF_ID")})
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public boolean isPaid() {
		return paid;
	}

	public void setPaid(boolean paid) {
		this.paid = paid;
	}


}
