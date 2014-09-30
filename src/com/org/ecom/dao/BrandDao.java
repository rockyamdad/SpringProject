package com.org.ecom.dao;

import java.util.List;

import com.org.ecom.domain.Brand;
import com.org.ecom.domain.Product;

public interface BrandDao {
//public void saveUser ( Brand brand );
public List<Brand> getBrands();

public Brand getLoginBrand(Brand brand);
public Brand getById(int id);
//public void saveAdminUser (User admin);
public void updatebrand(Brand brand);

public void saveProduct(Product product);

public void saveBrandUser(Brand brand);






}
