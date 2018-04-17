package com.ships.services;

import java.math.BigDecimal;

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
	 * Save a new shipping company
	 * 
	 * @param shippingCompany
	 * @return
	 */
	public ShippingCompany saveShippingCompany(ShippingCompany shippingCompany) {
		return shippingCompanyRepository.save(shippingCompany);
	}

	/**
	 * List all the shipping company
	 * 
	 * @return
	 */
	public Iterable<ShippingCompany> listShippingCompany() {
		return shippingCompanyRepository.findAll();
	}

	/**
	 * Find a shipping company by its id
	 * 
	 * @param id
	 * @return
	 */
	public ShippingCompany findById(int id) {
		return shippingCompanyRepository.findOne(id);
	}

	/**
	 * Reduces the balance of a shipping company by the cost
	 * 
	 * @param shippingCompanyId
	 * @param cost
	 * @return
	 */
	public boolean reduceBalanceBy(int shippingCompanyId, BigDecimal cost) {
		// Get the old data
		ShippingCompany sc = this.findById(shippingCompanyId);
		if (sc != null) {
			// Substract the cost
			sc.setBalance(sc.getBalance().subtract(cost));
			// Save the shipping company
			return this.saveShippingCompany(sc) != null;
		}

		return false;
	}
}
