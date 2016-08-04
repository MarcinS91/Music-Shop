package com.packt.store.dao.impl;

import java.io.IOException;
import java.math.BigDecimal;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.packt.store.dao.CartDao;
import com.packt.store.model.Cart;
import com.packt.store.service.CustomerOrderService;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private CustomerOrderService customerOrderService;

	public Cart getCartById(int cartId) {
		Session session = sessionFactory.getCurrentSession();
		return (Cart) session.get(Cart.class, cartId);
	}

	public Cart validate(int cartId) throws IOException {
		Cart cart = getCartById(cartId);
		if (cart == null || cart.getCartItems().size() == 0) {
			throw new IOException(cartId + "");
		}

		update(cart);
		return cart;
	}

	public void update(Cart cart) {
		int cartId = cart.getCartId();
		double grandTotal = customerOrderService.getCutomerOrderGrandTotal(cartId);
		cart.setGrandTotal(grandTotal);

		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cart);

	}
	

}
