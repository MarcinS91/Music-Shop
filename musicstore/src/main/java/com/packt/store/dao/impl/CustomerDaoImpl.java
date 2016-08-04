package com.packt.store.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.packt.store.dao.CustomerDao;
import com.packt.store.model.Authorities;
import com.packt.store.model.Cart;
import com.packt.store.model.Customer;
import com.packt.store.model.Users;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void addCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();

		customer.getBillingAddress().setCustomer(customer);
		customer.getShippingAddress().setCustomer(customer);

		session.saveOrUpdate(customer);
		session.saveOrUpdate(customer.getBillingAddress());
		session.saveOrUpdate(customer.getShippingAddress());

		Users newUser = new Users();
		newUser.setUsername(customer.getUsername());
		newUser.setPassword(customer.getPassword());
		newUser.setEnabled(true);
		newUser.setCustomerId(customer.getCustomerId());

		Authorities newAuthority = new Authorities();
		newAuthority.setAuthority("ROLE_USER");
		session.saveOrUpdate(newUser);
		session.saveOrUpdate(newAuthority);
		newAuthority.setUsername(customer.getUsername());

		Cart newCart = new Cart();
		newCart.setCustomer(customer);
		customer.setCart(newCart);

		session.saveOrUpdate(customer);
		session.saveOrUpdate(newCart);

		session.flush();

	}

	public Customer getCustomerById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Customer customer = (Customer) session.get(Customer.class, id);
		session.flush();
		
		return customer;
	}

	public List<Customer> getAllCustomers() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Customer ");
		List<Customer> customerList = query.list();

		return customerList;

	}

	public Customer getCustomerByUsername(String username) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Customer where username = ?");
		query.setString(0, username);

		return (Customer) query.uniqueResult();
	}

	public void deleteCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(customer);
		session.flush();

	}

}
