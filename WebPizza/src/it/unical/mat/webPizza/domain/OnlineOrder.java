package it.unical.mat.webPizza.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="OnlineOrder")
@DiscriminatorValue("B")
public class OnlineOrder extends Order {
	
	
	//State of the delivery
	public static int D_NOT_DELIVERY=0;
	public static int D_DELIVERED=1;
	public static int D_SUSPENDED=2;
	public static int D_ANNULLED=3;
	
	@ManyToOne(cascade = { CascadeType.ALL })
	@JoinTable(name = "ORDER_DELIVERY", 
	joinColumns = { @JoinColumn(name = "ORDER_ID") }, 
	inverseJoinColumns = { @JoinColumn(name = "DELIVERY_ID")})	
	private Deliveryman deliveryman;
	
	@Column(name="DELIVERY_STATUS")
	private int deliveryStatus;
	
	@Column(name="ADDRESS")
	private String address;
	
	
	public Deliveryman getDeliveryman() {
		return deliveryman;
	}

	public void setDeliveryman(Deliveryman deliveryman) {
		this.deliveryman = deliveryman;
	}

	public int getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(int deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
