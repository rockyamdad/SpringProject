package com.org.ecom.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

import org.hibernate.Query;

import java.lang.String;





import com.org.ecom.domain.Brand;
import com.org.ecom.domain.Product;
@Transactional
@Repository("brandDao")
public class BrandDaoImpl implements BrandDao {

	@Autowired
	private SessionFactory sessionfactory;



	@Override
	public List<Brand> getBrands() {
		@SuppressWarnings("unchecked")
		List<Brand> brandlist = sessionfactory.getCurrentSession()
				.createCriteria(Brand.class).list();
		return brandlist;
	}
	
	public Brand getById(int id)
	{
		return (Brand) sessionfactory.getCurrentSession().get(Brand.class,id);
	}
	
	public void updatebrand(Brand brand)
	{
		sessionfactory.getCurrentSession().merge(brand);
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public Brand getLoginBrand(Brand brand) {
		
		//@SuppressWarnings("rawtypes")
		//List loginuser = new ArrayList();
		String sql = "from Brand b where b.email =:email and b.password =:password  and b.status=1";
		Query query = sessionfactory.getCurrentSession().createQuery(sql); 
		query.setParameter("email",brand.getEmail());
		query.setParameter("password",brand.getPassword());
		//query.setParameter("type","client");
		//String pass = brand.getPassword();
		List l =query.list();
		Brand loginuser = (Brand)l.get(0);
		
		
		if(loginuser!=null)
		{
			
			return loginuser;
		}
		else
		{
			return null;
		}
		/*
		 @Override
public Brand getLoginBrand(Brand brand) {
String sql = "from Brand b where b.email = :email and b.password = :password and b.status=1";
Query query = sessionfactory.getCurrentSession().createQuery(sql); 
query.setParameter("email",brand.getEmail());
query.setParameter("password",brand.getPassword());
List lu=query.list();
Brand loginuser=(Brand)lu.get(0);

if(loginuser!=null)
{
return loginuser;
}
else
{
return null;
}
}
		 */
		
		
	}

	@Override
	public void saveProduct(Product product) {
		sessionfactory.getCurrentSession().saveOrUpdate(product);
		
	}

	@Override
	public void saveBrandUser(Brand brand) {
		System.out.println("RForm");
		sessionfactory.getCurrentSession().saveOrUpdate(brand);
		
	}
	
	/*
	@Override
	public List<Brand> getBrand() {
		
		@SuppressWarnings("unchecked")
		List<Brand> brandlist = sessionfactory.getCurrentSession()
				.createCriteria(Brand.class).list();
		return brandlist;
		
	}
	*/

	

}

