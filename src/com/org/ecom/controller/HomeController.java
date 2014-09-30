package com.org.ecom.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.org.ecom.domain.*;
import com.org.ecom.service.*;



@Controller
public class HomeController {

	@Autowired
	private UserService userService;
	//private BrandService brandService;
	
	@RequestMapping("/welcome")
	public ModelAndView welcomepage()
	{
		//System.out.println("welcome page");
		return new ModelAndView("Welcome");
	}
	
	
	
	@RequestMapping("/adminhome")
	public ModelAndView AdminHomePage()
	{
		Map<String, Object> model = new HashMap<String, Object>();
		System.out.println(userService.getUsers());
		model.put("userslist", userService.getUsers());
		return new ModelAndView("AdminHome",model);
	}
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView edit(@RequestParam("id") Integer id)
	{
		
		ArrayList<String> gender = new ArrayList<String>();
		gender.add("Male");
		gender.add("Female");
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("gender", gender);
		ModelAndView ob = new ModelAndView("EditUser");
		User user = userService.getById(id);
		ob.addObject("edituser",user);
		ob.addObject("model",model);
		return ob;
	}
	@RequestMapping(value="/edit", method=RequestMethod.POST)
    public String update(@ModelAttribute("edituser")User user, BindingResult result,SessionStatus status)
    {
	
		User old= userService.getById(user.getId());
		old.setDob(user.getDob());
		old.setEmail(user.getEmail());
		old.setPhone(user.getPhone());
		old.setGender(user.getGender());
		old.setName(user.getName());
		//old.setPassword(old.getPassword());
		//old.setStatus(old.getStatus());
		//old.setType(old.getType());
		userService.update(old);
        status.setComplete();
        return "redirect:adminhome.html";
    }
	@RequestMapping("/clienthome")
	public ModelAndView ClientHomePage()
	{
		return new ModelAndView("ClientHome");
	}

	@RequestMapping("/adminregister")
	public ModelAndView getAdminRegisterForm(@ModelAttribute("admin") User admin,
			BindingResult result) {
		
		System.out.println("Register Form");
		return new ModelAndView("AdminRegister");
	}

	@RequestMapping("/saveAdmin")
	public ModelAndView saveAdminData(@ModelAttribute("admin") User admin,
			BindingResult result) {
		admin.setType("admin");
		admin.setStatus(1);
		userService.addAdmin(admin);
		System.out.println("Save Admin Data");
		return new ModelAndView("redirect:/welcome.html");
	}

	
	@RequestMapping("/register")
	public ModelAndView getRegisterForm(@ModelAttribute("client") User client,
			BindingResult result) {
	
		System.out.println("Register Form");
		return new ModelAndView("Register");
	}

	@RequestMapping("/saveClient")
	public ModelAndView saveClientData(@ModelAttribute("user") User user,
			BindingResult result) {
		if(result.hasErrors())
		{
			return new ModelAndView("redirect:/register.html");
		}
		else{
			user.setType("client");
			user.setStatus(1);
			userService.addClient(user);
			System.out.println("Save User Data");
			return new ModelAndView("redirect:/login.html");
		}
	}
	
	@RequestMapping("/login")
	public ModelAndView login(@ModelAttribute("user") User user,
			BindingResult result)
	{
		return new ModelAndView("Login");
	}
	
	@RequestMapping("/userlogin")
	public ModelAndView loginverify(@ModelAttribute("logininfo") User user,HttpSession session)
	{
		
		
		//List loginuser = new ArrayList();
		User  loginuser = userService.getLoginUser(user);
		//System.out.println(on);
		//String on = (String)loginuser.get(0);
		String session_type = loginuser.getType();
		int session_id = loginuser.getId();
		session.setAttribute("id", session_id);
		session.setAttribute("type", session_type);
		
		
		if( session_type.equals("client"))
		{
			
			
			return new ModelAndView("redirect:/clienthome.html");
			
		}
		else
		{
			return new ModelAndView("redirect:/adminhome.html");
		}
		
	}
	@RequestMapping("/statusdeactive")
	public ModelAndView changeStatus(@RequestParam("id") Integer id)
	{
		User ob = userService.getById(id);
		ob.setStatus(0);
		userService.update(ob);
		return new ModelAndView("redirect:/adminhome.html");
		
	}
	@RequestMapping("/statusactive")
	public ModelAndView changeStatus2(@RequestParam("id") Integer id)
	{
		User ob = userService.getById(id);
		ob.setStatus(1);
		userService.update(ob);
		return new ModelAndView("redirect:/adminhome.html");
		
	}


	@RequestMapping("/adminviewbrand")
	public ModelAndView AdminViewBrand()
	{
		Map<String, Object> model = new HashMap<String, Object>();
		System.out.println(userService.getUsers());
		model.put("brandlists", userService.getBrands());
		return new ModelAndView("AdminViewBrand",model);
	}
	
	@RequestMapping("/adminviewproduct")
	public ModelAndView AdminViewProduct(@RequestParam("id") Integer id)
	{
		Map<String, Object> model = new HashMap<String, Object>();
		System.out.println(userService.getUsers());
		model.put("productlist", userService.getProducts(id));
		return new ModelAndView("AdminViewProduct",model);
	}
	 @RequestMapping(value="/logout",method=RequestMethod.GET)
	 public String logoutUser(HttpSession session) {
		    session.invalidate();
		    return "redirect:/branduserlogin.html";
		  }
}

