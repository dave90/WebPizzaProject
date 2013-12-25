package it.unical.mat.webPizza.domain;

public class OnlineOrder extends Order {
	
	//TODO
	
	//State of the delivery
	public static int D_NOT_DELIVERY=0;
	public static int D_DELIVERED=1;
	public static int D_SUSPENDED=2;
	public static int D_ANNULLED=3;
	
	
	private Deliveryman deliveryman;
	
	private int deliveryStatus;
	
	
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

}
