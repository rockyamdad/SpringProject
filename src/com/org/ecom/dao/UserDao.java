package com.org.ecom.dao;


import java.util.List;

import com.org.ecom.domain.*;

public interface UserDao {
	
public void saveUser ( User user );
public List<User> getUser();

public User getLoginUser(User user);
public User getById(int id);
public void saveAdminUser ( User admin );
public void update(User user);


public List<Brand> getBrand();
public List<Product> getProduct(Integer id);
public Product getProductById(Integer id);
public void deactiveproduct(Product product);
public Product getBrandById(Integer id);
public List<Product> getProducts(Integer brand_id);
public List<Product> gettypeProducts(Integer brand_id,String usertype);
public List<Product> getSearchProducts(String usertype);
public List<Product> getProducts();
}