package com.packt.store.dao;

import java.util.List;

import com.packt.store.model.Product;

public interface ProductDao {

	public void addProduct(Product product);
	
	public void deleteProduct(Product product);
	
	public void editProduct(Product product);
	
	Product getProductById (int id);
	
	List<Product> getProductList();
}
