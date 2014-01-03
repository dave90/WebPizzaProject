package it.unical.mat.webPizza.dao;

import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.domain.PizzaIngredients;

import java.util.List;

public interface PizzaDAO {
	
	Long insertPizza(String name, List<PizzaIngredients> ingredients, double discount);
	int deletePizza(Long id);
	int updatePizza(Long id,String name, List<PizzaIngredients> ingredients, double discount);
	List<Pizza> getAllPizzas();
}
