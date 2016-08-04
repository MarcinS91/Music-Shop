package com.packt.store.dao;

import java.io.IOException;

import com.packt.store.model.Cart;

public interface CartDao {

	Cart getCartById(int cartId);

	Cart validate(int cartId) throws IOException;

	void update(Cart cart);
}
