package com.packt.musicstore.admin;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.packt.musicstore.model.Product;
import com.packt.musicstore.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminProduct {

	@Autowired
	private ProductService productService;

	@RequestMapping("/product/addProduct")
	public String addProduct(Model model) {
		Product product = new Product();
		product.setProductCategory("instrument");
		product.setProductDescription("new");
		product.setProductStatus("active");

		model.addAttribute("product", product);

		return "addProduct";
	}

	@RequestMapping(value = "/product/addProduct", method = RequestMethod.POST)
	public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result,
			HttpServletRequest request) {

		if (result.hasErrors()) {
			return "addProduct";
		}

		productService.addProduct(product);

		return "redirect:/admin/productInventory";
	}

}
