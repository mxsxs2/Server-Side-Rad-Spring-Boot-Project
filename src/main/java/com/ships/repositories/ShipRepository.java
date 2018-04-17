package com.ships.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ships.model.Ship;

@Repository
public interface ShipRepository extends CrudRepository<Ship, Integer> {
	/**
	 * Returns all the ships which are not owned by any company
	 * 
	 * @return
	 */
	Iterable<Ship> findByShippingCompanyIsNull();
}
