package com.packt.musicstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("greeting", "Witaj w sklepie internetowym!");
		model.addAttribute("tagline", "Wyj¹tkowym i jedynym sklepie internetowym");

		return "welcome";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {

		if (error != null) {
			model.addAttribute(error, "Niepoprawna nazwa uzytkownika i haslo!");
		}

		if (logout != null) {
			model.addAttribute("msg", "Wylogowanie zakonczone z sukcesem!");
		}

		return "login";
	}
}
