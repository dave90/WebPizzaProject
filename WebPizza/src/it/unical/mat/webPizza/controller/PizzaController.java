package it.unical.mat.webPizza.controller;

import it.unical.mat.webPizza.dao.OnlineOrderDAO;
import it.unical.mat.webPizza.dao.PizzaDAO;
import it.unical.mat.webPizza.daoImpl.PizzaDAOImpl;
import it.unical.mat.webPizza.domain.Pizza;
import it.unical.mat.webPizza.domain.PizzaIngredients;
import it.unical.mat.webPizza.service.OrderManager;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class PizzaController {
	
	@Autowired
	private OrderManager orderManager;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/pizzaList", method = RequestMethod.GET)
	public String pizzaList(Locale locale, Model model) {
		
		List<Pizza> listPizza = orderManager.getAllPizza();
		
		model.addAttribute("listPizza", listPizza);
		
		return "pizzas";
	}
	
	@RequestMapping(value = "/buildPizza", method = RequestMethod.GET)
	public String buildPizza(Locale locale, Model model) {
		
		List<PizzaIngredients> listPizza = orderManager.getAllIngredients();
		model.addAttribute("listPizzaIngredients", listPizza);
		
		
		return "buildPizza";
	}
	
	@RequestMapping(value = "/pizzaClientList", method = RequestMethod.GET)
	public String pizzaClientList(Locale locale, Model model) {
		
		List<Pizza> listPizza = orderManager.getAllClientPizza();
		
		model.addAttribute("listPizza", listPizza);
		model.addAttribute("clientPizzaIMG", 1);
		
		return "pizzas";
	}
	
	
	
	
}
