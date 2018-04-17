package com.ships.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ships.model.ShippingCompany;
import com.ships.services.ShippingCompanyService;

/**
 * Controller for the shipping company views/operations
 * 
 * @author user
 *
 */
@Controller
public class ShippingCompanyController {

	// Autowired shipping company service
	@Autowired
	private ShippingCompanyService shippingCompanyservice;

	/**
	 * Shows the shipping company list
	 * 
	 * @return
	 */
	@GetMapping("/showShippingCompanies")
	public ModelAndView showShips() {
		// Create a new model and view
		ModelAndView map = new ModelAndView("showShippingCompanies");
		// Get the list of ships
		map.addObject("shippingCompanies", shippingCompanyservice.listShippingCompany());
		// Return the mapping
		return map;
	}

	/**
	 * Shows the add shipping company form if the request type is get
	 * 
	 * @param s
	 * @return
	 */
	@GetMapping("/addShippingCompany")
	public String addShippingCompany(@ModelAttribute("shippingCompany") ShippingCompany s) {
		return "addShippingCompany";
	}

	/**
	 * Shows the add shipping company form if the request type is get
	 * 
	 * @param s
	 * @return
	 */
	@PostMapping("/addShippingCompany")
	public String saveShippingCompany(@Valid @ModelAttribute("shippingCompany") ShippingCompany s,
			BindingResult bindingResult) {
		// Check if the form input was valid
		if (bindingResult.hasErrors()) {
			// Show the form again
			return "addShippingCompany";
		}

		// Save the shipping company
		this.shippingCompanyservice.saveShippingCompany(s);
		// Redirect to the shipping company list
		return "redirect:showShippingCompanies";
	}
}
