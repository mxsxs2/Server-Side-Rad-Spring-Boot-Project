package com.ships.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ships.model.Ship;
import com.ships.services.ShipService;

/**
 * Controller for the ship views/operations
 * 
 * @author user
 *
 */
@Controller
public class ShipController {

	// Autowired ship service
	@Autowired
	private ShipService shipservice;

	/**
	 * Shows the ship list
	 * 
	 * @return
	 */
	@GetMapping("/showShips")
	public ModelAndView showShips() {
		// Create a new model and view
		ModelAndView map = new ModelAndView("showShips");
		// Get the list of ships
		map.addObject("ships", shipservice.listShips());
		// Return the mapping
		return map;
	}

	/**
	 * Shows the add ship form if the request type is get
	 * 
	 * @param s
	 * @return
	 */
	@GetMapping("/addShip")
	public String addShip(@ModelAttribute("ship") Ship s) {
		return "addShip";
	}

	/**
	 * Shows the add ship form if the request type is get
	 * 
	 * @param s
	 * @return
	 */
	@PostMapping("/addShip")
	public String saveShip(@Valid @ModelAttribute("ship") Ship s, BindingResult bindingResult) {
		// Check if the form input was valid
		if (bindingResult.hasErrors()) {
			// Show the form again
			return "addShip";
		}

		// Save the ship
		this.shipservice.saveShip(s);
		// Redirect to the ship list
		return "redirect:showShips";
	}
}
