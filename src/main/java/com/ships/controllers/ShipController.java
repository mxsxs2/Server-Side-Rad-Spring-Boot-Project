package com.ships.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ships.services.ShipService;

@Controller
public class ShipController {

	@Autowired
	private ShipService shipservice;

	@GetMapping("/showShips")
	public ModelAndView showShips() {
		//Create a new model and view
		ModelAndView map = new ModelAndView("showShips");
		//Get the list of ships
		map.addObject("ships", shipservice.listShips());
		//Return the mapping
		return map;
	}
}
