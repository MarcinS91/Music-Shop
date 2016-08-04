package com.packt.store.dao;

import com.packt.store.model.Cart;
import com.packt.store.model.CartItem;

public interface CartItemDao {

	void addCartItem(CartItem cartItem);
	
	void removeCartItem(CartItem cartItem);
	
	void removeAllCartItems(Cart cart);
	
	CartItem getCartItemByProductId(int productId);
}
