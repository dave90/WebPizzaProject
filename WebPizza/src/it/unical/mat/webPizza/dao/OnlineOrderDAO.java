package it.unical.mat.webPizza.dao;

import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.domain.Deliveryman;
import it.unical.mat.webPizza.domain.OnlineOrder;
import it.unical.mat.webPizza.domain.Pizza;

import java.util.List;


public interface OnlineOrderDAO  {
	
	public Long insertOrder(String date,String status,List<Pizza> pizzas,boolean paid,Client client,int deliveryStatus,String address);
	public int updateDelivery(Long id, Deliveryman deliveryman);
	public int updateDeliveryStatus(Long id,int deliveryStatus);
	public int getOrderDeliveryStatus(Long id);
	public List<OnlineOrder> getNotDeliveryManAssignedOrder();
	public String getDeliveryManPositionByOrder(Long idOrder);
	
}