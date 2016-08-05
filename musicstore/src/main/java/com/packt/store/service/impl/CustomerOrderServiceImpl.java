package com.packt.store.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.packt.store.dao.CustomerOrderDao;
import com.packt.store.model.Cart;
import com.packt.store.model.CartItem;
import com.packt.store.model.CustomerOrder;
import com.packt.store.service.CartService;
import com.packt.store.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Autowired
	private CustomerOrderDao customerOrderDao;
	
	@Autowired
	private CartService cartService;

	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDao.addCustomerOrder(customerOrder);
	}

	public double getCutomerOrderGrandTotal(int cartId) {
		double grandTotal = 0;
		Cart cart = cartService.getCartById(cartId);
		List<CartItem> cartItems = cart.getCartItems();
		
		for (CartItem item : cartItems) {
			grandTotal += item.getTotalPrice();
		}
		
		return grandTotal;
	}

}
