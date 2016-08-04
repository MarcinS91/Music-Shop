package com.packt.store.admin;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.packt.store.model.Customer;
import com.packt.store.service.CustomerService;

@Controller
@RequestMapping("/admin")
public class AdminCustomer {

		
	@Autowired
	private CustomerService customerService;

	@RequestMapping("/customer/deleteCustomer/{id}")
	public String deleteCustomer(@PathVariable int id, Model model, HttpServletRequest request) {
		
		Customer customer = customerService.getCustomerById(id);
		customerService.deleteCustomer(customer);

		return "redirect:/admin/customer";
	}
}
