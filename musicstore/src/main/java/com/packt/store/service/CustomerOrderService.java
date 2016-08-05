package com.packt.store.service;



import com.packt.store.model.CustomerOrder;

public interface CustomerOrderService {

	void addCustomerOrder(CustomerOrder customerOrder);

	double getCutomerOrderGrandTotal(int cartId);
}
