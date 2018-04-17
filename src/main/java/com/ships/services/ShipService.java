package com.ships.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ships.model.Ship;
import com.ships.repositories.ShipRepository;
/**
 * Contains every all methods for a ship 	 
 * @author Krisztian Nagy
 *	
 */
@Service
public class ShipService {
	@Autowired
	private ShipRepository shipRepository;
	/**
	 * Save a new ship
	 * @param newShip
	 * @return
	 */
	public Ship saveShip(Ship newShip) {
		return shipRepository.save(newShip);
	}
	/**
	 * List all the ships
	 * @return
	 */
	public Iterable<Ship> listShips (){
		return shipRepository.findAll();
	}
}

