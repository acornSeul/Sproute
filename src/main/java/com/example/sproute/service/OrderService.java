package com.example.sproute.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.repository.mapper.OrderMapperRepository;
import com.example.sproute.domain.Order;
import com.example.sproute.domain.OrderDetail;

@Service
public class OrderService {
	@Autowired
	private OrderMapperRepository orderMapperRepository;
	
	public void insertOrder(Order order) {
		orderMapperRepository.insertOrder(order);
	}
	
	public List<Order> selectOrderByUserId(String userId) {
		return orderMapperRepository.selectOrderByUserId(userId);
	}
	
	public List<Order> selectOrderByOrderDate(Order order) {
		return orderMapperRepository.selectOrderByOrderDate(order);
	}
	public void deleteOrder(String orderId) {
		orderMapperRepository.deleteOrder(orderId);
	}
	
	//주문번호로 주문정보조회
	public Order selectOrderByOrderId(String orderId) {
		return orderMapperRepository.selectOrderByOrderId(orderId);
	}

}
