package com.org.ecom.controller;

import java.io.File;
import java.io.FileOutputStream;  
import java.io.IOException;  
import java.io.InputStream;  
import java.io.OutputStream;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile; 

import javax.servlet.http.HttpSession;

import com.org.ecom.domain.Brand;
import com.org.ecom.domain.User;
import com.org.ecom.service.*;
import com.org.ecom.domain.Product;

@Controller
//@SessionAttributes("id")
public class BrandController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private BrandService brandService;
	
	@Autowired
	private UserService userService;
	//private ProductService productService;
	
	
	@RequestMapping("/brandregister")
	public ModelAndView getBrandRegisterForm(@ModelAttribute("brand") Brand brand,
			BindingResult result) {
		
		System.out.println("Register Form");
		return new ModelAndView("BrandRegister");
	}
	
	@RequestMapping("/saveBrand")
	public ModelAndView saveBrandData(@RequestParam(required=false, value = "name") String name, @RequestParam(required=false, value = "description") String description, @RequestParam(required=false, value = "email") String email, @RequestParam(required=false, value = "contact") String contact, @RequestParam(required=false, value = "outlet") String outlet, @RequestParam(required=false, value = "password") String password, @RequestParam(required=false, value = "logo") MultipartFile file) {
		
		
		InputStream inputStream = null;
		OutputStream outputStream = null;
		String fileName = file.getOriginalFilename();
		try    {  
		  inputStream = file.getInputStream();   
			
		 
		  File newFile = new File("E:/D drive/Spring/Ecom/WebContent/resources/content/images" , fileName);  
		  if (!newFile.exists()) {  
			   newFile.createNewFile();  
			  }  
			  outputStream = new FileOutputStream(newFile);  
			  int read = 0;  
			  byte[] bytes = new byte[1024];  
			 
			  while ((read = inputStream.read(bytes)) != -1) {  
			   outputStream.write(bytes, 0, read);  
			  }  
			 } catch (IOException e) {  
			  e.printStackTrace();  
			  }  
		Brand brand = new Brand();
		brand.setName(name);
		brand.setDescription(description);
		brand.setLogo(fileName);
		brand.setContact(contact);
		brand.setEmail(email);
		brand.setPassword(password);
		brand.setOutlet(outlet);
		//Brand brand = new Brand();
		brand.setType("brand");
		brand.setStatus(1);
		//brand.setLogo("asd");
		
		brandService.addBrand(brand);
		
		return new ModelAndView("redirect:/brandlist.html");
	}
	
	@RequestMapping("/branduserlogin")
	public ModelAndView login(@ModelAttribute("brand") Brand brand,
			BindingResult result)
	{
		return new ModelAndView("BrandLogin");
	}
	
	@RequestMapping("/brandhome")
	public ModelAndView BrandHomePage(HttpSession session)
	{
		int b_id = (int)session.getAttribute("id");
		//String type = (String)session.getAttribute("type");
		//System.out.println("ok");
		ModelAndView ob = new ModelAndView("BrandHome");
		Brand brand = brandService.getById(b_id);
		ob.addObject("info",brand);
		//ob.addObject("type",type);
		return ob;
	}
	
	
	
	
	
	@RequestMapping("/brandlogin")
	public ModelAndView brandloginverify(@ModelAttribute("logininfo") Brand brand,HttpSession session)
	{
		
		
		@SuppressWarnings("rawtypes")
		//List loginuser = new ArrayList();
		 Brand loginuser = brandService.getLoginBrand(brand);
		//System.out.println(on);
		//String on = (String)loginuser.get(0);
		System.out.println("okkk");
		//System.out.println(loginuser.getId());
		String session_type = loginuser.getType();
		int session_id = loginuser.getId();
		if( loginuser!=null )
		{
			session.setAttribute("id", session_id);
			session.setAttribute("type", session_type);
			return new ModelAndView("redirect:/brandhome.html");
		}
		
		return new ModelAndView("redirect:/branduserlogin.html");
	}
	
	@RequestMapping("/uploadproduct")
	public ModelAndView uploadproductdetails(@ModelAttribute("product") Product product, BindingResult result) {
		ArrayList<String> ptype = new ArrayList<String>();
		ptype.add("Shirt");
		ptype.add("Pant");
		ptype.add("Shoe");
		ptype.add("Sharee");
		ptype.add("Kameej");
		ptype.add("Dolls");
		ptype.add("watch");
		ptype.add("bag");
		ptype.add("hat");
		ptype.add("others");
		
		ArrayList<String> utype = new ArrayList<String>();
		utype.add("Man");
		utype.add("Woman");
		utype.add("kids");
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("ptype", ptype);
		model.put("utype", utype);
	

		
		
		return new ModelAndView("UploadProduct", "model", model);
	}
	
	//@SuppressWarnings("resource")
	@RequestMapping("/insertproduct")
	public ModelAndView insertuploadproduct(@RequestParam(required=false, value = "name") String name, @RequestParam(required=false, value = "type") String type, @RequestParam(required=false, value = "description") String description, @RequestParam(required=false, value = "usertype") String usertype, @RequestParam(required=false, value = "price") double price, @RequestParam(required=false, value = "quantity") int quantity, @RequestParam(required=false, value = "image") MultipartFile file,HttpSession session) 
	{
		//String saveDirectory = "E:/D drive/Spring/Ecom/WebContent/WEB-INF/images";
		//System.out.println(file.getOriginalFilename());
		InputStream inputStream = null;
		OutputStream outputStream = null;
		String fileName = file.getOriginalFilename();
		try    {  
		  inputStream = file.getInputStream();  
		 
		  File newFile = new File("E:/D drive/Spring/Ecom/WebContent/resources/content/images" , fileName);  
		  if (!newFile.exists()) {  
		   newFile.createNewFile();  
		  }  
		  outputStream = new FileOutputStream(newFile);  
		  int read = 0;  
		  byte[] bytes = new byte[1024];  
		 
		  while ((read = inputStream.read(bytes)) != -1) {  
		   outputStream.write(bytes, 0, read);  
		  }  
		 } catch (IOException e) {  
		  e.printStackTrace();  
		  }  
		Product product = new Product();
     	//Product product=new Product();
     	        product.setDescription(description);
     	        product.setImage(file.getOriginalFilename());
     	        product.setName(name);
     	        product.setPrice(price);
     	        product.setQuantity(quantity);
     	        product.setType(type);
     	        product.setUsertype(usertype);
     	        product.setStatus(1);
     	       int b_id = (int)session.getAttribute("id");
     	        product.setBrandId(b_id);
     	        brandService.addProduct(product);
	
		
		return new ModelAndView("redirect:/uploadproduct.html");
		
		
		
	}
	@RequestMapping("/brandlist")
	public ModelAndView allbrand()
	{
		Map<String, Object> model = new HashMap<String, Object>();
		//System.out.println(brandService.getBrands());
		model.put("brandslist", brandService.getBrands());
		return new ModelAndView("BrandList",model);
	}
	@RequestMapping(value = "/brandupdate", method = RequestMethod.GET)
	public ModelAndView brandedit(@RequestParam("id") Integer id)
	{
		
		ModelAndView ob = new ModelAndView("BrandEdit");
		Brand brand = brandService.getById(id);
		ob.addObject("editbrand",brand);
		
		return ob;
	}
	@RequestMapping(value="/brandedit", method=RequestMethod.POST)
    public String update(@RequestParam(required=false,value="id")int id,@RequestParam(required=false,value="name")String name,@RequestParam(required=false,value="logo")MultipartFile logo,@RequestParam(required=false,value="contact")String contact,@RequestParam(required=false,value="outlet")String outlet,@RequestParam(required=false,value="email")String email,@RequestParam(required=false,value="description")String description,SessionStatus status,HttpSession session)
    {
		
		InputStream inputStream = null;
		OutputStream outputStream = null;
		String fileName = logo.getOriginalFilename();
		try    {  
		  inputStream = logo.getInputStream();  
		 
		  File newFile = new File("E:/D drive/Spring/Ecom/WebContent/resources/content/images" , fileName);  
		  if (!newFile.exists()) {  
		   newFile.createNewFile();  
		  }  
		  outputStream = new FileOutputStream(newFile);  
		  int read = 0;  
		  byte[] bytes = new byte[1024];  
		 
		  while ((read = inputStream.read(bytes)) != -1) {  
		   outputStream.write(bytes, 0, read);  
		  }  
		 } catch (IOException e) {  
		  e.printStackTrace();  
		  }  
		
		Brand brand = brandService.getById(id);
		brand.setName(name);
		brand.setDescription(description);
		brand.setContact(contact);
		brand.setEmail(email);
		brand.setLogo(fileName);
		brand.setOutlet(outlet);
		//brand.setType("brand");
		//brand.setStatus(1);
		
		//System.out.println(brand.getOutlet());
		
		brandService.updatebrand(brand);
        status.setComplete();
        String type = (String)session.getAttribute("type");
        if(type.equals("brand"))
        {
        	return "redirect:brandhome.html";
        }else
        {
        	return "redirect:brandlist.html";
        }
        
    }
	@RequestMapping("/brand/statusdeactive")
	public ModelAndView changeStatus(@RequestParam("id") Integer id)
	{
		Brand ob = brandService.getById(id);
		ob.setStatus(0);
		brandService.updatebrand(ob);
		return new ModelAndView("redirect:/brandlist.html");
		
	}
	
	@RequestMapping("/brand/statusactive")
	public ModelAndView changeStatus2(@RequestParam("id") Integer id)
	{
		Brand ob = brandService.getById(id);
		ob.setStatus(1);
		brandService.updatebrand(ob);
		return new ModelAndView("redirect:/brandlist.html");
	}
	@RequestMapping("/brandproducts")
	public ModelAndView brandProducts(@RequestParam("id") Integer id)
	{
		//ModelAndView ob = new ModelAndView("BrandProducts");
		Map<String, Object> model = new HashMap<String, Object>();

		model.put("products",productService.brandProducts(id));
		//ob.addObject("products",product);
		
		return new ModelAndView("BrandProducts",model);
	}
	@RequestMapping(value = "/productUpdate", method = RequestMethod.GET)
	public ModelAndView productedit(@RequestParam("id") Integer id)
	{
		ArrayList<String> ptype = new ArrayList<String>();
		ptype.add("Shirt");
		ptype.add("Pant");
		ptype.add("Shoe");
		ptype.add("Sharee");
		ptype.add("Kameej");
		ptype.add("Dolls");
		ptype.add("watch");
		ptype.add("bag");
		ptype.add("hat");
		ptype.add("others");
		
		ArrayList<String> utype = new ArrayList<String>();
		utype.add("Man");
		utype.add("Woman");
		utype.add("kids");
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("ptype", ptype);
		model.put("utype", utype);
		
		ModelAndView ob = new ModelAndView("ProductEdit");
		Product product = productService.getById(id);
		ob.addObject("editproduct",product);
		ob.addObject("model",model);
		//ob.addObject("ptype",ptype);
		return ob;
	}
	@RequestMapping("/updateProducts")
	public ModelAndView productsUpdate(@RequestParam(required=false,value="id")int id,@RequestParam(required=false, value = "name") String name, @RequestParam(required=false, value = "type") String type, @RequestParam(required=false, value = "description") String description, @RequestParam(required=false, value = "usertype") String usertype, @RequestParam(required=false, value = "price") double price, @RequestParam(required=false, value = "quantity") int quantity, @RequestParam(required=false, value = "image") MultipartFile file,HttpSession session)
	{
		InputStream inputStream = null;
		OutputStream outputStream = null;
		String fileName = file.getOriginalFilename();
		try    {  
		  inputStream = file.getInputStream();  
		 
		  File newFile = new File("E:/D drive/Spring/Ecom/WebContent/resources/content/images" , fileName);  
		  if (!newFile.exists()) {  
		   newFile.createNewFile();  
		  }  
		  outputStream = new FileOutputStream(newFile);  
		  int read = 0;  
		  byte[] bytes = new byte[1024];  
		 
		  while ((read = inputStream.read(bytes)) != -1) {  
		   outputStream.write(bytes, 0, read);  
		  }  
		 } catch (IOException e) {  
		  e.printStackTrace();  
		  }  
		Product product = productService.getById(id);
     	//Product product=new Product();
     	        product.setDescription(description);
     	        product.setImage(file.getOriginalFilename());
     	        product.setName(name);
     	        product.setPrice(price);
     	        product.setQuantity(quantity);
     	        product.setType(type);
     	        product.setUsertype(usertype);
     	       // product.setStatus(1);
     	       int b_id = (int)session.getAttribute("id");
     	        product.setBrandId(b_id);
     	        productService.updateProduct(product);
	
		
		return new ModelAndView("redirect:brandhome.html");
		
	}
	@RequestMapping("/brands")
	public ModelAndView brandsLogo()
	{
		Map<String,Object> model = new HashMap<String,Object>();
		model.put("brandslogo", brandService.getBrands());
		return new ModelAndView("Brands",model);
	
	}
	@RequestMapping("/productBrand")
	public ModelAndView products(@RequestParam("id")Integer id)
	{
		Map <String,Object> model = new HashMap<String,Object>();
		model.put("brand_id", id);
		model.put("products", userService.getProducts(id));
		return new ModelAndView("ProductsDisplay",model);
	}
	@RequestMapping("/productDetails")
	public ModelAndView productdetails(@RequestParam("id")Integer id)
	{
		Map <String,Object> model = new HashMap<String,Object>();
		model.put("productdetail", productService.getById(id));
		return new ModelAndView("ProductDetail",model);
	}
	@RequestMapping("/searchProduct")
	public ModelAndView ProductSearch(@RequestParam("usertype")String usertype,@RequestParam("id")Integer id)
	{
		Map <String,Object> model = new HashMap<String,Object>();
		model.put("brand_id", id);
		model.put("products", userService.gettypeProducts(id,usertype));
		return new ModelAndView("FixedProduct",model);
	}
	@RequestMapping("/viewProduct")
	public ModelAndView viewProducts()
	{
		Map <String,Object> model = new HashMap<String,Object>();
	
		model.put("productsView", userService.getProducts());
		return new ModelAndView("ProductsView",model);
	}
	@RequestMapping("/searchViewProduct")
	public ModelAndView productViewSearch(@RequestParam("usertype")String usertype)
	{
		Map <String,Object> model = new HashMap<String,Object>();
		
		model.put("productsView", userService.getSearchProducts(usertype));
		return new ModelAndView("ShowProduct",model);
	}

}
