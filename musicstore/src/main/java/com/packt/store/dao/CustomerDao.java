package com.packt.store.dao;

import java.util.List;

import com.packt.store.model.Customer;

public interface CustomerDao {

	void addCustomer(Customer customer);
	
	void deleteCustomer(Customer customer);

	Customer getCustomerById(int customerId);

	List<Customer> getAllCustomers();

	Customer getCustomerByUsername(String username);

}
