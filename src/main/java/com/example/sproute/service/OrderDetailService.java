package com.example.sproute.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.repository.mapper.OrderMapperRepository;
import com.example.repository.session.OrderDetailSessionRepository;
import com.example.sproute.domain.OrderDetail;

@Service
public class OrderDetailService {
	@Autowired
	private OrderDetailSessionRepository detailSession;
	//주문하기
	public void insertOrderDetail(OrderDetail detail) {
		detailSession.insertOrderDetail(detail);
	}
	
	//주문번호로 구매 상품 조회
	public List<OrderDetail> selectOrderDetailByOrderId (String orderId){
		return detailSession.selectOrderDetailByOrderId(orderId);
	}
	
	//유저아이디로 주문번호 조회
	public String selectOrderListByUserID (String userId) {
		return detailSession.selectOrderListByUserID(userId);
	}
	
	//구매 취소
	public void deleteOrderDetail (String detailId) {
		detailSession.deleteOrderDetail(detailId);
	}

}
