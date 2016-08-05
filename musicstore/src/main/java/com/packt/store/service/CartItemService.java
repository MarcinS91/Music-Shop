package com.packt.store.service;

import com.packt.store.model.Cart;
import com.packt.store.model.CartItem;

public interface CartItemService {

	void addCartItem(CartItem cartItem);

	void removeCartItem(CartItem cartItem);

	void removeAllCartItems(Cart cart);

	CartItem getCartItemByProductId(int productId);
}
