package com.ships.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ships.model.ShippingCompany;

@Repository
public interface ShippingCompanyRepository extends CrudRepository<ShippingCompany, Integer> {
}
