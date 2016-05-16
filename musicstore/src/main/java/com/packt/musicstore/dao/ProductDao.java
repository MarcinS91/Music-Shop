package com.packt.musicstore.dao;

import java.util.List;

import com.packt.musicstore.domain.Product;

public interface ProductDao {

	List<Product> getProductList();
	
	Product getProductById (int id);
	
	void addProduct(Product product);
	
	void editProduct(Product product);
	
	void deleteProduct(Product product);
}
