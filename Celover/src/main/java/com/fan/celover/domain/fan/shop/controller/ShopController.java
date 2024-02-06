package com.fan.celover.domain.fan.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShopController {
	@GetMapping("/fanpage/shop")
	public String fanShop() {
		return "main/fanpage/shop/shopmain";
	}
	@GetMapping("/fanpage/shop/detail")
	public String fanShopDetail() {
		return "main/fanpage/shop/shop-detail";
	}
}
