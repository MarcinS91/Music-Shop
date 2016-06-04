package com.packt.musicstore.service.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.packt.musicstore.dao.ProductDao;
import com.packt.musicstore.domain.Product;
import com.packt.musicstore.service.ProductService;

public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao productDao;

	
	public List<Product> getProductList() {
		return productDao.getProductList();
	}

	
	public Product getProductById(int id) {
		return productDao.getProductById(id);
	}

	
	public void addProduct(Product product) {
		productDao.addProduct(product);
		
	}

	
	public void editProduct(Product product) {
		productDao.editProduct(product);
		
	}

	
	public void deleteProduct(Product product) {
		productDao.deleteProduct(product);
		
	}
}
