package com.packt.store.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.packt.store.dao.CartDao;
import com.packt.store.model.Cart;
import com.packt.store.service.CartService;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cartDao;

	public Cart getCartById(int cartId) {
		return cartDao.getCartById(cartId);
	}

	public void update(Cart cart) {
		cartDao.update(cart);
	}

}
