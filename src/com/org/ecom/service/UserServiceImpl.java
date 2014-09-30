package com.org.ecom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.org.ecom.dao.UserDao;
import com.org.ecom.domain.Brand;
import com.org.ecom.domain.Product;
import com.org.ecom.domain.User;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	@Override
	public void addClient(User user) {
		userDao.saveUser(user);
	}

	@Override
	public List<User> getUsers() {
		return userDao.getUser();
	}
	@Override
	public User getById(int id)
	{
		return userDao.getById(id);
	}
	@Override
	public User getLoginUser(User user) {
		return userDao.getLoginUser(user);
	}
	
	@Override
	public void addAdmin(User admin) {
		userDao.saveAdminUser(admin);
	}
	public void update(User user)
	{
		userDao.update(user);
	}
	
	@Override
	public List<Brand> getBrands() {
		return userDao.getBrand();
	}

	@Override
	public List<Product> getProducts(Integer id) {
		
		return userDao.getProduct(id);
	}
	
	@Override
	public List<Product> gettypeProducts(Integer brand_id,String usertype) {
		
		return userDao.gettypeProducts(brand_id,usertype);
	}
	@Override
	public List<Product> getProducts() {
		return userDao.getProducts();
	}
	@Override
	public List<Product> getSearchProducts(String usertype) {
		
		return userDao.getSearchProducts(usertype);
	}
}

