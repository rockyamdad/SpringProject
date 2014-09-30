package com.org.ecom.service;
import com.org.ecom.dao.*;
import com.org.ecom.domain.*;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ProductServiceIml implements ProductService {
	
	@Autowired
	ProductDao productDao;
	
	@Override
	public List<Product> brandProducts(int id)
	{
		
		return productDao.brandProducts(id);
	}
	@Override
	public Product getById(int id)
	{
		return productDao.getById(id);
	}
	public void updateProduct(Product product)
	{
		productDao.updateProduct(product);
	}
	

}
