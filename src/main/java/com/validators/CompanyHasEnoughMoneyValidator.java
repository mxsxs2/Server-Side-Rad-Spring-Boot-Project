package com.validators;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import com.ships.model.OrderInfo;
import com.ships.model.Ship;
import com.ships.model.ShippingCompany;
import com.ships.services.ShipService;
import com.ships.services.ShippingCompanyService;

public class CompanyHasEnoughMoneyValidator implements ConstraintValidator<CompanyHasEnoughMoney, OrderInfo> {
	// Autowired ship service
	@Autowired
	private ShipService shipservice;
	// Autowired shipping company service
	@Autowired
	private ShippingCompanyService shippingCompanyservice;

	@Override
	public void initialize(CompanyHasEnoughMoney constraint) {
	}

	@Override
	public boolean isValid(OrderInfo entity, ConstraintValidatorContext context) {
		// If there is nothing to compare
		if (entity == null || entity.getShip() == null || entity.getShippingCompany() == null) {
			// Make sure the services are injected
		} else if (this.shipservice != null && this.shippingCompanyservice != null) {
			// Get the ship
			Ship ship = this.shipservice.findById(entity.getShip().getSid());
			System.out.println(ship);
			// Get the shipping company
			ShippingCompany shippingCompany = this.shippingCompanyservice
					.findById(entity.getShippingCompany().getScid());
			// Return the comparison result
			return shippingCompany.getBalance().compareTo(ship.getCost()) > -1;
		}

		return true;

	}
}
