package com.packt.musicstore.dao;

import java.util.List;

import com.packt.musicstore.model.Product;

public interface ProductDao {

	public void addProduct(Product product);
	
	public void deleteProduct(Product product);
	
	public void editProduct(Product product);
	
	Product getProductById (int id);
	
	List<Product> getProductList();
}
