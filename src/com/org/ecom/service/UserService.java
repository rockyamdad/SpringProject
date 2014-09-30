package com.org.ecom.service;

import java.util.List;

import com.org.ecom.domain.Brand;
import com.org.ecom.domain.Product;
import com.org.ecom.domain.User;

public interface UserService {
	public void addClient(User user);

	public List<User> getUsers();
	
	public User getLoginUser(User user);
	public User getById(int id);
	public void addAdmin(User admin);
	public void update(User user);
	
	public List<Brand> getBrands();

	public List<Product> getProducts(Integer id);
	public List<Product> gettypeProducts(Integer brand_id,String usertype);
	public List<Product> getProducts();
	public List<Product> getSearchProducts(String usertype);
	
}

