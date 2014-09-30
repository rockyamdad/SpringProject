package com.org.ecom.service;

import java.util.List;

import com.org.ecom.domain.Brand;
import com.org.ecom.domain.Product;

public interface BrandService {

	//public List<Brand> getBrands();
	
	public Brand getLoginBrand(Brand brand);
	public Brand getById(int id);
	public void updatebrand(Brand brand);

	public void addProduct(Product product);

	public void addBrand(Brand brand);
	
	public List<Brand> getBrands();

	
	
	
}

