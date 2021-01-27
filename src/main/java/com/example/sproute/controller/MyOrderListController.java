package com.example.sproute.controller;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.sproute.domain.Item;
import com.example.sproute.domain.Order;
import com.example.sproute.domain.OrderDetail;
import com.example.sproute.service.ItemService;
import com.example.sproute.service.OrderDetailService;
import com.example.sproute.service.OrderService;

@Controller
public class MyOrderListController {

	@Autowired
	private OrderService orderService;
	
	@Autowired
	private OrderDetailService orderDetailService;
	
	@Autowired
	private ItemService itemService;
	
	private final Map<String, Item> itemMap = Collections.synchronizedMap(new HashMap<String, Item>());
	
	//구매내역조회페이지
	@RequestMapping("/mypage/MyOrderList")
	public String MyOrderList(HttpSession session, ModelMap model) {
		String userId = session.getAttribute("userId").toString();
		List<Order> orders = orderService.selectOrderByUserId(userId); // 유저아이디로 오더내역가져오기
		/*
		for (int i = 0; i < orders.size(); i++) {
			item = itemService.selectItem(orders.get(i).getItemId());
			if (item == null) {
				itemMap.put("null", null);
			} else {
				itemMap.put(item.getItemId(), item);
			}
		}
*/
		//model.addAttribute("items", itemMap);
 		model.addAttribute("orders", orders);
		return "MyPageOrderList";
	}
	
	@RequestMapping("/mypage/MyOrderList/orderDetail")
	public String DetailOrder(@RequestParam(value="orderId") String orderId, ModelMap model, HttpSession session) throws Exception {
		Order orderInfo = orderService.selectOrderByOrderId(orderId); //주문 정보
		List<OrderDetail> orderitemList = orderDetailService.selectOrderDetailByOrderId(orderId); //아이템 정보
		
		model.addAttribute("orderInfo", orderInfo);
		model.addAttribute("itemList", orderitemList);
		return "MyPageOrderDetail";
	}
	
	@RequestMapping("/mypage/MyOrderList/cancel") 
	public String CancelOrder(@RequestParam(value="orderId") String orderId,
			ModelMap model, HttpSession session) throws Exception {
		
		orderDetailService.deleteOrderDetail(orderId);
		orderService.deleteOrder(orderId);
	
//		String itemId = orderService.selectItemIdByOrderId(orderId).get(0).getItemId();
//		int quantity = orderService.selectItemIdByOrderId(orderId).get(0).getQuantity();
//		
//		itemService.updateStockAfterDelete(quantity, itemId);
//		
		return "redirect:/mypage/MyOrderList";
	}
	
}
