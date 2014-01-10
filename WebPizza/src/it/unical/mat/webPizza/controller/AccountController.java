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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

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
		
		String hpwd=MD5Java.md5Java(pwd);
		
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
	public String clientCheckout( Model model) {
		if(model.containsAttribute("client")){			
			return "checkout";
		}
		return "redirect:login.html";
	}
	
	@RequestMapping(value = "/wishlist", method = RequestMethod.GET)
	public String clientWishlist( Model model) {
		if(model.containsAttribute("client")){			
			return "wishlist";
		}
		return "redirect:login.html";
	}
	
	@RequestMapping(value = "/orderhistory", method = RequestMethod.GET)
	public String clientOrderhistory( Model model) {
		if(model.containsAttribute("client")){			
			return "orderhistory";
		}
		return "redirect:login.html";
	}
	
	@RequestMapping(value = "/editprofile", method = RequestMethod.GET)
	public String clientEditprofile( Model model) {
		if(model.containsAttribute("client")){			
			return "editprofile";
		}
		return "redirect:login.html";
	}
	
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String clientRegister( Model model, SessionStatus status) {
		if(model.containsAttribute("client")){			
			status.setComplete();
			
			return "redirect:index.html";
		}
		return "register";
	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String clientRegistration(@RequestParam(value="User") String usr,
										@RequestParam(value="Password") String pwd,
										@RequestParam(value="Name") String name,
										@RequestParam(value="Surname") String surname,
										@RequestParam(value="Mail") String mail,
										@RequestParam(value="Phone") String phone,
										Model model) {
		
		if(usr==null || usr.equals("")){
			model.addAttribute("notifyRegistration", "Insert Username");
			return "register";
		}
		if(pwd==null || pwd.equals("")){
			model.addAttribute("notifyRegistration", "Insert Password");
			return "register";
		}
		if(name==null || name.equals("")){
			model.addAttribute("notifyRegistration", "Insert Name");
			return "register";
		}
		if(surname==null || surname.equals("")){
			model.addAttribute("notifyRegistration", "Insert Surname");
			return "register";
		}
		
		if(mail==null)
			mail="";
		if(phone==null)
			phone="";
		
		if(accessManager.existClientUsername(usr)){
			model.addAttribute("notifyRegistration", "Exist Username");
			return "register";
		}
		
		String hpwd=MD5Java.md5Java(pwd);
		
		if(accessManager.insertClient(name, surname, usr, phone, mail, hpwd)){
			
			Client client=accessManager.getClient(usr, hpwd);
			model.addAttribute("client", client);
			
			return "redirect:account.html";
		}
		
		model.addAttribute("notifyRegistration", "Registration aborted, contact Administrator");
		
		return "redirect:register.html";
		
	}
	
	@RequestMapping(value = "/existClientUser", method = RequestMethod.POST)
	public @ResponseBody String existClientUsername(@RequestParam(value="user") String usr,
										Model model) {
		
		if(accessManager.existClientUsername(usr)){
			model.addAttribute("notifyRegistration", "Exist Username");
			return "User Exist";
		}
		
		return "OK";
		
	}
	
	@RequestMapping(value = "/editProfile", method = RequestMethod.POST)
	public String clientEditprofile(@RequestParam(value="User") String usr,
										@RequestParam(value="Password") String pwd,
										@RequestParam(value="Name") String name,
										@RequestParam(value="Surname") String surname,
										@RequestParam(value="Mail") String mail,
										@RequestParam(value="Phone") String phone,
										Model model) {
		
		if(!model.containsAttribute("client")){			
			return "redirect:login.html";
		}
		
		Long id=((Client)model.asMap().get("client")).getId();
		
		if(usr==null || usr.equals("")){
			model.addAttribute("notifyRegistration", "Insert Username");
			return "editprofile";
		}
		if(pwd==null || pwd.equals("")){
			model.addAttribute("notifyRegistration", "Insert Password");
			return "editprofile";
		}
		if(name==null || name.equals("")){
			model.addAttribute("notifyRegistration", "Insert Name");
			return "editprofile";
		}
		if(surname==null || surname.equals("")){
			model.addAttribute("notifyRegistration", "Insert Surname");
			return "editprofile";
		}
		
		String userName=((Client)model.asMap().get("client")).getUsername();
		
		if(!userName.equals(usr) && accessManager.existClientUsername(usr)){
			model.addAttribute("notifyRegistration", "Username exist");
			return "editprofile";
		}
		
		if(mail==null)
			mail="";
		if(phone==null)
			phone="";
		
		
		String hpwd=MD5Java.md5Java(pwd);
		
		if(accessManager.updateClient(id, name, surname, usr, phone, mail, hpwd)){
			
			Client client=accessManager.getClient(usr, hpwd);
			model.addAttribute("client", client);
			
			return "redirect:account.html";
		}
		
		model.addAttribute("notifyRegistration", "Registration aborted, contact Administrator");
		
		return "redirect:account.html";
		
	}

	

}
