package com.ships.controllers;

import java.math.BigDecimal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ships.model.OrderInfo;
import com.ships.services.OrderInfoService;
import com.ships.services.ShipService;
import com.ships.services.ShippingCompanyService;

/**
 * Controller for the order views/operations
 * 
 * @author user
 *
 */
@Controller
public class OrderInfoController {

	// Autowired order service
	@Autowired
	private OrderInfoService orderservice;
	// Autowired ship service
	@Autowired
	private ShipService shipservice;
	// Autowired shipping company service
	@Autowired
	private ShippingCompanyService shippingCompanyservice;

	/**
	 * Shows the orders
	 * 
	 * @return
	 */
	@GetMapping("/showOrders")
	public ModelAndView showOrders() {
		// Create a new model and view
		ModelAndView map = new ModelAndView("showOrders");
		// Get the list of orders
		map.addObject("orders", orderservice.listOrders());
		// Return the mapping
		return map;
	}

	/**
	 * Shows the add order form if the request type is get
	 * 
	 * @param s
	 * @return
	 */
	@GetMapping("/createOrder")
	public ModelAndView createOrder(@ModelAttribute("order") OrderInfo s) {
		// Create a new model and view
		ModelAndView map = new ModelAndView("createOrder");
		// Get the list of ships
		map.addObject("shipList", this.shipservice.listUnownedShips());
		// Get the list of shipping companies
		map.addObject("shippingCompanyList", this.shippingCompanyservice.listShippingCompany());
		// Return the mapping
		return map;
	}

	/**
	 * Shows the add order form if the request type is get
	 * 
	 * @param s
	 * @return
	 */
	@PostMapping("/createOrder")
	public ModelAndView saveOrder(@ModelAttribute("order") @Valid OrderInfo s, BindingResult bindingResult) {

		// Check if the form input was valid
		if (bindingResult.hasErrors()) {
			// Show the form again
			// Create a new model and view
			ModelAndView map = new ModelAndView("createOrder");
			// Get the list of ships
			map.addObject("shipList", this.shipservice.listUnownedShips());
			// Get the list of shipping companies
			map.addObject("shippingCompanyList", this.shippingCompanyservice.listShippingCompany());
			// Return the mapping
			return map;
		}

		// Save the order
		this.orderservice.saveOrder(s);
		// Save the relation to the ship
		this.shipservice.updateShippingCompany(s.getShip(), s.getShippingCompany());
		// Load the ship to get the price
		BigDecimal cost = this.shipservice.findById(s.getShip().getSid()).getCost();
		// Deduct from the shipping company
		this.shippingCompanyservice.reduceBalanceBy(s.getShippingCompany().getScid(), cost);

		// Redirect to the order list
		return new ModelAndView("redirect:showOrders");
	}
}
