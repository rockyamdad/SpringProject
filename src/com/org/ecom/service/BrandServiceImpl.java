package com.org.ecom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.org.ecom.dao.BrandDao;
import com.org.ecom.domain.Brand;
import com.org.ecom.domain.Product;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class BrandServiceImpl implements BrandService {

	
	@Autowired
	BrandDao brandDao;
	
	

	@Override
	public List<Brand> getBrands() {
		return brandDao.getBrands();
	}
	
	@Override
	public Brand getById(int id)
	{
		return brandDao.getById(id);
	}
	
	@Override
	public Brand getLoginBrand(Brand brand) {
		return brandDao.getLoginBrand(brand);
	}
	/*
	@Override
	public void addAdmin(User admin) {
		userDao.saveAdminUser(admin);
	}*/
	public void updatebrand(Brand brand)
	{
		brandDao.updatebrand(brand);
	}
	
	
	@Override
	public void addProduct(Product product) {
		brandDao.saveProduct(product);
		
	}
	@Override
	public void addBrand(Brand brand) {
	
		brandDao.saveBrandUser(brand);
		

	}
/*	@Override
	public List<Brand> getBrands() {
		return userDao.getBrand();
	}
*/
	
}

