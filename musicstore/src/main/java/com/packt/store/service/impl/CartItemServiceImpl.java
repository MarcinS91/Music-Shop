package com.packt.store.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.packt.store.dao.CartItemDao;
import com.packt.store.model.Cart;
import com.packt.store.model.CartItem;
import com.packt.store.service.CartItemService;

@Service
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDao cartItemDao;

	public void addCartItem(CartItem cartItem) {
		cartItemDao.addCartItem(cartItem);
	}

	public void removeCartItem(CartItem cartItem) {
		cartItemDao.removeCartItem(cartItem);

	}

	public void removeAllCartItems(Cart cart) {
		cartItemDao.removeAllCartItems(cart);
	}

	public CartItem getCartItemByProductId(int productId) {
		return cartItemDao.getCartItemByProductId(productId);
	}

}
