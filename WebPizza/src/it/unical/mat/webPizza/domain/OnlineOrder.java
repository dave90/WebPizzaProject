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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + deliveryStatus;
		result = prime * result
				+ ((deliveryman == null) ? 0 : deliveryman.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		OnlineOrder other = (OnlineOrder) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (deliveryStatus != other.deliveryStatus)
			return false;
		if (deliveryman == null) {
			if (other.deliveryman != null)
				return false;
		} else if (!deliveryman.equals(other.deliveryman))
			return false;
		return true;
	}

}
