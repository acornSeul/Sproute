package com.example.repository.session;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.sproute.domain.OrderDetail;

@Repository
public class OrderDetailSessionRepository {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String namespace = "com.example.repository.mapper.OrderDetailMapper";
	
	//주문하기
	public void insertOrderDetail(OrderDetail orderDetail) {
		sqlSession.insert(namespace + ".insertOrderDetail", orderDetail);
	}
	
	//주문번호로 구매 상품 조회
	public List<OrderDetail> selectOrderDetailByOrderId (String orderId){
		List<OrderDetail> detail = sqlSession.selectList(namespace + ".selectOrderDetailByOrderId", orderId);
		
		return detail;
	}
	
	//유저아이디로 주문번호 조회
	public String selectOrderListByUserID (String userId) {
		return sqlSession.selectOne(namespace + ".selectOrderListByUserID", userId);
	}
	
	//주문 취소
	public void deleteOrderDetail (String detailId) {
		sqlSession.delete(namespace + ".deleteOrderDetail", detailId);
	}
	
	//삭제할 주문내역 정보 조회
	public List<OrderDetail> selectItemInfoByOrderId (String orderId){
		List<OrderDetail> list = sqlSession.selectList(namespace + ".selectItemInfoByOrderId", orderId);
		
		return list;
	}

}
