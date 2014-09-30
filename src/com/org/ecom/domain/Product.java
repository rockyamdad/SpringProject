package com.org.ecom.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

                                           
@Entity                             
@Table(name = "product")             
public class Product {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;

	@Column(name = "name")
	private String name;

	@Column(name = "image")
	private String  image;

	@Column(name = "type")
	private String type;

	@Column(name = "description")
	private String description;
	
	@Column(name = "usertype")
	private String usertype;
	
	@Column(name = "price")
	private double price;
	
	@Column(name = "status")
	private int status;

	@Column(name = "quantity")
	private int quantity;

	@Column(name = "brand_id")
	private int brand_id;
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String  getImage() {
		return image;
	}

	public void setImage(String  image) {
		this.image = image;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	
	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public int getBrandId() {
		return brand_id;
	}

	public void setBrandId(int brand_id) {
		this.brand_id = brand_id;
	}
	

}

