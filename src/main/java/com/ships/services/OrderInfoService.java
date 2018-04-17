package com.ships.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ships.model.OrderInfo;
import com.ships.repositories.OrderInfoRepository;

/**
 * Contains every all methods for an order
 * 
 * @author Krisztian Nagy
 * 
 */
@Service
public class OrderInfoService {
	@Autowired
	private OrderInfoRepository orderInfoRepository;

	/**
	 * Save a new order
	 * 
	 * @param newOrderInfo
	 * @return
	 */
	public OrderInfo saveOrder(OrderInfo newOrderInfo) {
		return orderInfoRepository.save(newOrderInfo);
	}

	/**
	 * List all the orders
	 * 
	 * @return
	 */
	public Iterable<OrderInfo> listOrders() {
		return orderInfoRepository.findAll();
	}
}
