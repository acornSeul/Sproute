package com.example.sproute.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.sproute.domain.Item;
import com.example.sproute.domain.Product;
import com.example.sproute.domain.Review;
import com.example.sproute.service.ReviewService;
import com.example.sproute.service.SaleItemService;

//일반상품 누르면 일반상품아이템 전체 출력되는 컨트롤러
//유모차, 장난감 누르면 출력되는 컨트롤러
@Controller
public class ViewProductController {
	
	@Autowired
	private SaleItemService saleItemService;
	@Autowired
	private ReviewService reviewService;
	
	//메인화면 -> "일반"메뉴
	@RequestMapping("/shop/viewCategory.do")
	public String handleRequest(@RequestParam(value="categoryId") String categoryId, ModelMap model) throws Exception {
		List<Item> items = saleItemService.getItemListByCategory(categoryId);
		model.put("Items", items);
		System.out.println(items);
		
		return "SaleProduct";
	}
	
	@RequestMapping("/shop/selectProduct")
	public String selectProductView(@RequestParam(value="categoryId") String categoryId, 
			@RequestParam(value="productId") String productId, ModelMap model) throws Exception {
		Product product = new Product();
		product.setCateogryId(categoryId);
		product.setProductId(productId);
		List<Item> items = saleItemService.getItemListByProduct(product);
		
		model.put("Items", items);
		
		//중고상품목록
		if(categoryId.equals("used")) {
			return "UsedProduct";
		}
		return "SaleProduct";
	}

	//상품(itemid)상세보기
	@RequestMapping("/shop/viewItemDetail.do") 
	public String handleRequest2(String itemId, ModelMap model) throws Exception {
		Item item = saleItemService.getItem(itemId);
		if (item == null) {
			model.addAttribute("message", "상품이 존재하지 않습니다.");
			return "NotFound";
		} else {
			model.addAttribute("item", item);
		}
		
		List<Review> review = reviewService.viewItemReview(itemId);
		Review rating = reviewService.averageRating(itemId);
		
		model.put("review", review);
		model.addAttribute("rating", rating);
		
		return "SaleProductDetail";
	}
}
