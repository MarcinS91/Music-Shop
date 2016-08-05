package com.packt.store.service;

import com.packt.store.model.Cart;

public interface CartService {

	Cart getCartById(int cartId);

	void update(Cart cart);
}
