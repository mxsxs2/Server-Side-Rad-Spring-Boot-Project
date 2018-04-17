package com.ships.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ships.model.Ship;
import com.ships.model.ShippingCompany;
import com.ships.repositories.ShipRepository;

/**
 * Contains every all methods for a ship
 * 
 * @author Krisztian Nagy
 * 
 */
@Service
public class ShipService {
	@Autowired
	private ShipRepository shipRepository;

	/**
	 * Save a new ship
	 * 
	 * @param newShip
	 * @return
	 */
	public Ship saveShip(Ship newShip) {
		return shipRepository.save(newShip);
	}

	/**
	 * List all the ships
	 * 
	 * @return
	 */
	public Iterable<Ship> listShips() {
		return shipRepository.findAll();
	}

	/**
	 * List all the unowned ships
	 * 
	 * @return
	 */
	public Iterable<Ship> listUnownedShips() {
		return shipRepository.findByShippingCompanyIsNull();
	}

	/**
	 * Find a ship by its id
	 * 
	 * @param id
	 * @return
	 */
	public Ship findById(int id) {
		return shipRepository.findOne(id);
	}

	/**
	 * Update the shipping company of a ship
	 * 
	 * @param shipId
	 * @param shippingCompanyId
	 * @return
	 */
	public boolean updateShippingCompany(Ship ship, ShippingCompany shippingCompany) {
		// Get the ship
		ship = this.findById(ship.getSid());
		// If there is a ship
		if (ship != null) {
			// Set the company to the ship
			ship.setShippingCompany(shippingCompany);
			// Save the ship
			return this.saveShip(ship) != null;
		}
		return false;
	}
}