package it.unical.mat.webPizza.domain;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.CollectionId;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.Type;

@Entity
//"`Order`" because the simple "Order" cannot be used
@Table(name="`Order`")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(
    name="DISCRIMINATOR",
    discriminatorType=DiscriminatorType.STRING
)
@DiscriminatorValue(value="A")
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
	
	@Column(name="DATE")
	private String date;

	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@ManyToMany(cascade = { CascadeType.ALL })
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((client == null) ? 0 : client.hashCode());
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + (paid ? 1231 : 1237);
		result = prime * result
				+ ((pizzaiolo == null) ? 0 : pizzaiolo.hashCode());
		result = prime * result + ((pizzas == null) ? 0 : pizzas.hashCode());
		result = prime * result + ((status == null) ? 0 : status.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Order other = (Order) obj;
		if (client == null) {
			if (other.client != null)
				return false;
		} else if (!client.equals(other.client))
			return false;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (paid != other.paid)
			return false;
		if (pizzaiolo == null) {
			if (other.pizzaiolo != null)
				return false;
		} else if (!pizzaiolo.equals(other.pizzaiolo))
			return false;
		if (pizzas == null) {
			if (other.pizzas != null)
				return false;
		} else if (!pizzas.containsAll(other.pizzas) || !other.pizzas.containsAll(pizzas))
			return false;
		if (status == null) {
			if (other.status != null)
				return false;
		} else if (!status.equals(other.status))
			return false;
		return true;
	}


}
