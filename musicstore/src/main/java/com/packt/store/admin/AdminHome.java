package com.packt.store.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.packt.store.model.Customer;
import com.packt.store.model.Product;
import com.packt.store.service.CustomerService;
import com.packt.store.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminHome {

	@Autowired
	private ProductService productService;

	@Autowired
	private CustomerService customerService;

	@RequestMapping
	public String adminPage() {
		return "admin";
	}

	@RequestMapping("/productInventory")
	public String productInventory(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "productsInventory";
	}

	@RequestMapping("/customer")
	public String customerManagement(Model model) {
		List<Customer> customerList = customerService.getAllCustomers();
		model.addAttribute("customerList", customerList);
		
		return "customerManagement";
	}

}
