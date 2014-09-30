package com.org.ecom.dao;

import java.util.List;

import com.org.ecom.domain.Brand;
import com.org.ecom.domain.Product;


public interface ProductDao {
	//System.out.println("service");
	public List<Product> brandProducts(int id);
	
	public Product getById(int id);
	public void updateProduct(Product product);
	
	

}