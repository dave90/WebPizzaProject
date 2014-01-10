package it.unical.mat.webPizza.controller;

import it.unical.mat.webPizza.domain.Client;
import it.unical.mat.webPizza.service.AccessManager;
import it.unical.mat.webPizza.util.MD5Java;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("client")
public class AccountController {
	@Autowired
	private AccessManager accessManager;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String clientLogIn( Model model) {
		if(model.containsAttribute("client"))
			return "redirect:account.html";
		
		model.addAttribute("img", "resource/img/clients/woman-eating-pizza.jpg");
		model.addAttribute("actionUrl","logIn.html");
		
		return "login";
	}
	
	@RequestMapping(value = "/chefLogin", method = RequestMethod.GET)
	public String chefLogIn( Model model) {
		model.addAttribute("img", "resource/img/clients/pizzaChef.png");
		model.addAttribute("actionUrl","chefLogIn.html");
		
		return "login";
	}
	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String adminLogIn( Model model) {
		model.addAttribute("img", "resource/img/clients/admin.jpg");
		model.addAttribute("actionUrl","adminLogIn.html");
		
		return "login";
	}
	
	@RequestMapping(value = "/deliverymanLogin", method = RequestMethod.GET)
	public String deliverymanLogIn( Model model) {
		model.addAttribute("img", "resource/img/clients/deliveryman.JPG");
		model.addAttribute("actionUrl","deliverymanLogIn.html");
		
		return "login";
	}
	
	@RequestMapping(value = "/logIn", method = RequestMethod.POST)
	public String clientLogInValidation(@RequestParam(value="User") String usr,
										@RequestParam(value="Password") String pwd,
										Model model) {
		
		String hpwd=pwd;//MD5Java.md5Java(pwd);
		
		Client client=accessManager.getClient(usr, hpwd);
		
		if(client==null){
			model.addAttribute("notifyLog", "Error : User or password wrong");
			model.addAttribute("img", "resource/img/clients/woman-eating-pizza.jpg");
			model.addAttribute("actionUrl","logIn.html");
			return "login";
		}else{
			model.addAttribute("client", client);
		}
		
		return "redirect:account.html";
	}
	
	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public String clientAccount( Model model) {
		if(model.containsAttribute("client")){			
			return "account";
		}
		return "redirect:login.html";
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout( Model model) {
		
		return "checkout";
	}
}
