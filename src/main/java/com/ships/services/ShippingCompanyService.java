package com.ships.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ships.model.ShippingCompany;
import com.ships.repositories.ShippingCompanyRepository;

/**
 * Contains every all methods for a shipping company
 * 
 * @author Krisztian Nagy
 * 
 */
@Service
public class ShippingCompanyService {
	@Autowired
	private ShippingCompanyRepository shippingCompanyRepository;

	/**
	 * Save a new ship
	 * 
	 * @param newShip
	 * @return
	 */
	public ShippingCompany saveShippingCompany(ShippingCompany shippingCompany) {
		return shippingCompanyRepository.save(shippingCompany);
	}

	/**
	 * List all the ships
	 * 
	 * @return
	 */
	public Iterable<ShippingCompany> listShippingCompany() {
		return shippingCompanyRepository.findAll();
	}
}
