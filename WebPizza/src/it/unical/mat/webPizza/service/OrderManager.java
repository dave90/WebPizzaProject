package it.unical.mat.webPizza.service;

import java.util.List;

import it.unical.mat.webPizza.dao.OnlineOrderDAO;
import it.unical.mat.webPizza.dao.OrderDAO;
import it.unical.mat.webPizza.dao.PizzaDAO;
import it.unical.mat.webPizza.dao.PizzaIngredientsDAO;
import it.unical.mat.webPizza.daoImpl.OnlineOrderDAOImpl;
import it.unical.mat.webPizza.daoImpl.OrderDAOImpl;
import it.unical.mat.webPizza.daoImpl.PizzaDAOImpl;
import it.unical.mat.webPizza.daoImpl.PizzaIngredientsDAOImpl;
import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.domain.Deliveryman;
import it.unical.mat.webPizza.domain.OnlineOrder;
import it.unical.mat.webPizza.domain.Order;
import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.domain.PizzaChef;
import it.unical.mat.webPizza.domain.PizzaIngredients;

public class OrderManager {
	
	private OnlineOrderDAO onlineOrderDAO;
	private OrderDAO orderDAO;
	private PizzaDAO pizzaDAO;
	private PizzaIngredientsDAO ingredientsDAO;
	
	public OrderManager() {
		onlineOrderDAO=new OnlineOrderDAOImpl();
		orderDAO=new OrderDAOImpl();
		pizzaDAO=new PizzaDAOImpl();
		ingredientsDAO=new PizzaIngredientsDAOImpl();
	}
	
	public List<PizzaIngredients> getAllIngredients(){
		return ingredientsDAO.getAllIngredients();
	}
	
	public boolean addIngredients(String name,double cost){
		if(ingredientsDAO.insertIngredient(name, cost)>0)
			return true;
		return false;
	}
	
	public boolean removeIngredients(Long id){
		if(ingredientsDAO.deleteIngredient(id)>0)
			return true;
		return false;
	}
	
	public List<Pizza> getAllPizza(){
		return pizzaDAO.getAllPizzas();
	}
	
	public boolean insertPizza(String name,List<PizzaIngredients> ingredients,double discount){
		if(pizzaDAO.insertPizza(name, ingredients, discount)>0)
			return true;
		return false;
	}
	
	public boolean deletePizza(Long id){
		if(pizzaDAO.deletePizza(id)>0)
			return true;
		return false;
	}
	
	public boolean insertOrder(String date,List<Pizza> pizzas,boolean paid,Client client){
		if(orderDAO.insertOrder(date,Order.S_NOT_ASSIGNED, pizzas, paid, client)>0)
			return true;
		return false;
	}
	
	public boolean insertOrder(String date,List<Pizza> pizzas,boolean paid,Client client,String address){
		if(onlineOrderDAO.insertOrder(date,Order.S_NOT_ASSIGNED, pizzas, paid, client, OnlineOrder.D_NOT_DELIVERY, address)>0)
			return true;
		return false;
	}
	
	public boolean assignChefToOrder(PizzaChef chef,Long idOrder){
		if(orderDAO.updateChef(idOrder, chef)>0)
			return true;
		return false;
	}
	
	public boolean assignDeliveryManToOrder(Deliveryman delivery,Long idOrder){
		if(onlineOrderDAO.updateDelivery(idOrder, delivery)>0)
			return true;
		return false;
	}
	
	public boolean updateOrderStatus(Long id,String status){
		if(orderDAO.updateStatus(id, status)>0)
			return true;
		return false;
	}
	
	public boolean updateDeliveryStatus(Long id,int deliveryStatus){
		if(onlineOrderDAO.updateDeliveryStatus(id, deliveryStatus)>0)
			return true;
		return false;
	}
	
	public List<Order> getAllNotAssignedChefOrder(){
		return orderDAO.getNotChefAssignedOrder();
	}
	
	public List<OnlineOrder> getAllNotAssignedDeliveryManOrder(){
		return onlineOrderDAO.getNotDeliveryManAssignedOrder();
	}
	
	public int getDeliveryStatusOrder(Long idOrder){
		return onlineOrderDAO.getOrderDeliveryStatus(idOrder);
	}
	
	public String getDeliveryManPositionOrder(Long idOrder){
		return onlineOrderDAO.getDeliveryManPositionByOrder(idOrder);
	}
	
	public String getOrderStatus(Long idOrder){
		return orderDAO.getOrderStatus(idOrder);
	}

}
