package com.org.ecom.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;











import java.util.ArrayList;

import org.hibernate.Query;

import java.lang.String;











import com.org.ecom.domain.*;
@Transactional
@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionfactory;

	@Override
	public void saveUser(User user) {
		sessionfactory.getCurrentSession().saveOrUpdate(user);
	}

	@Override
	public List<User> getUser() {
		@SuppressWarnings("unchecked")
		List<User> userlist = sessionfactory.getCurrentSession()
				.createCriteria(User.class).list();
		return userlist;
	}
	public User getById(int id)
	{
		return (User) sessionfactory.getCurrentSession().get(User.class,id);
	}
	
	public void update(User user)
	{
		sessionfactory.getCurrentSession().merge(user);
	}

	@Override
	public User getLoginUser(User user) {
		
		
		//List loginuser = new ArrayList();
		String hql = "from User C where C.email =:email and C.password =:password and C.status=1";
		Query query = sessionfactory.getCurrentSession().createQuery(hql); 
		query.setParameter("email",user.getEmail());
		query.setParameter("password",user.getPassword());
		//query.setParameter("type","client");
		List lu=query.list();
		User loginuser=(User)lu.get(0);
		if (loginuser!= null)
		{
			//List loginuser2 = new ArrayList();
			String sql2 = "Select type from User c2 where c2.email=:email";
			Query qr = sessionfactory.getCurrentSession().createQuery(sql2);
			qr.setParameter("email",user.getEmail());
			List lua=query.list();
			User loginuser2=(User)lua.get(0);
			
			
			
			return loginuser2;
		}
			
		else
			return null;
		
	}

	
	@Override
	public void saveAdminUser(User admin) {
		sessionfactory.getCurrentSession().saveOrUpdate(admin);
		
	}
	
	
	
	
	
	@Override
	public List<Brand> getBrand() {
		
		@SuppressWarnings("unchecked")
		List<Brand> brandlist = sessionfactory.getCurrentSession()
				.createCriteria(Brand.class).list();
		return brandlist;
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProduct(Integer id) {
		@SuppressWarnings("rawtypes")
		List productlist = new ArrayList();
		String hql = "from Product P where P.brand_id =:id";
		Query query = sessionfactory.getCurrentSession().createQuery(hql); 
		query.setParameter("id",id);
		productlist=query.list();
		return productlist;
	}

	@Override
	public Product getProductById(Integer id) {
		
		return (Product) sessionfactory.getCurrentSession().get(Product.class,id);
	}

	@Override
	public void deactiveproduct(Product product) {
		
		sessionfactory.getCurrentSession().merge(product);
	}

	@Override
	public Product getBrandById(Integer id) {
		
		return (Product) sessionfactory.getCurrentSession().get(Product.class,id);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> gettypeProducts(Integer brand_id,String usertype)
	{
		@SuppressWarnings("rawtypes")
		List productlist = new ArrayList();
		String hql = "from Product P where P.brand_id =:brand_id and P.usertype =:usertype";
		Query query = sessionfactory.getCurrentSession().createQuery(hql); 
		query.setParameter("brand_id",brand_id);
		query.setParameter("usertype",usertype);
		//query.setParameter("type","client");
		productlist=query.list();
		System.out.println(brand_id);
		System.out.println(usertype);
		System.out.println(productlist);
		System.out.println("okkkkkk yes");
		return productlist;
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProducts(Integer brand_id)
	{
		@SuppressWarnings("rawtypes")
		List productlist = new ArrayList();
		String hql = "from Product P where P.brand_id =:brand_id";
		Query query = sessionfactory.getCurrentSession().createQuery(hql); 
		query.setParameter("brand_id",brand_id);
		productlist=query.list();
		return productlist;
	}
	
	@Override
	public List<Product> getProducts() {
		@SuppressWarnings("unchecked")
		List<Product> productlist = sessionfactory.getCurrentSession()
				.createCriteria(Product.class).list();
		return productlist;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getSearchProducts(String usertype)
	{
		@SuppressWarnings("rawtypes")
		List productlist = new ArrayList();
		String hql = "from Product P where P.usertype =:usertype";
		Query query = sessionfactory.getCurrentSession().createQuery(hql); 
		
		query.setParameter("usertype",usertype);
		//query.setParameter("type","client");
		productlist=query.list();
		return productlist;
		
	}
	
}