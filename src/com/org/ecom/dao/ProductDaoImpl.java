package com.org.ecom.dao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.criterion.Expression;

import java.lang.String;

import com.org.ecom.domain.Brand;
import com.org.ecom.domain.Product;

@Transactional
@Repository("productDao")
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionfactory;
	
	public List<Product> brandProducts(int id)
	{
		
		
		//return productlist;
		System.out.println("sda");
		@SuppressWarnings("unchecked")
		List<Product> productlist =  sessionfactory.getCurrentSession().createCriteria(Product.class)
		  .add(Expression.like("brand_id",id))
				.list();
		//return false;
		return productlist;
	}
	public Product getById(int id)
	{
		return (Product) sessionfactory.getCurrentSession().get(Product.class,id);
	}
	public void updateProduct(Product product)
	{
		sessionfactory.getCurrentSession().merge(product);
	}


}
