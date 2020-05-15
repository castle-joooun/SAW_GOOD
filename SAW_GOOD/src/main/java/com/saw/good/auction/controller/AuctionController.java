package com.saw.good.auction.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.saw.good.auction.model.service.AuctionService;
import com.saw.good.auction.model.vo.Auction;
import com.saw.good.auction.model.vo.AuctionSearch;
import com.saw.good.common.PageFactory;


@Controller
public class AuctionController {

	@Autowired
	AuctionService service;
	
	@Autowired
	Logger logger;
	
	@RequestMapping("/auction/list")
	public ModelAndView auctionList(ModelAndView mv,
			@RequestParam(value="cPage",defaultValue="1") int cPage,
			@RequestParam(value="numPerPage",defaultValue="6") int numPerPage) {
		List<Auction> list = service.selectAcList(cPage,numPerPage);
		int totalData=service.countAuction();
		System.out.println(totalData);
		String pageBar=PageFactory.getPage(totalData, cPage, numPerPage, "/good/auction/list");
		mv.addObject("list",list);
		mv.addObject("pageBar", pageBar);
		mv.addObject("numPerPage", numPerPage);
		mv.addObject("cPage", cPage);
		mv.setViewName("auction/auctionList");
		return mv;
		
	}
	@RequestMapping("/auction/searchAuction")
	public ModelAndView searchAuction(String keyword,String value,ModelAndView mv,
			@RequestParam(value="cPage",defaultValue="1") int cPage,
			@RequestParam(value="numPerPage",defaultValue="6") int numPerPage) {
		Map<String,String> map = new HashMap();
		map.put("keyword",keyword);
		map.put("value",value);
		
		System.out.println(map);
		List<Auction> list = service.searchAuction(cPage,numPerPage,map);
		int totalData=service.countAcSearch(map);
		System.out.println(list);
		System.out.println(totalData);
		String pageBar=PageFactory.getPage(totalData, cPage, numPerPage, "/good/auction/list");
		mv.addObject("list",list);
		mv.addObject("pageBar", pageBar);
		mv.addObject("numPerPage", numPerPage);
		mv.addObject("cPage", cPage);
		mv.setViewName("auction/auctionList");
		return mv;
	}

	@RequestMapping("/auction/categoryList")
	public ModelAndView auctionList(ModelAndView mv,AuctionSearch category,
			@RequestParam(value="cPage",defaultValue="1") int cPage,
			@RequestParam(value="numPerPage",defaultValue="6") int numPerPage) {
		System.out.println(category);
		List<Auction> list = service.selectCtList(cPage,numPerPage,category);
		int totalData=service.countCtAuction(category);
		System.out.println(totalData);
		String pageBar=PageFactory.getPage(totalData, cPage, numPerPage, "/good/auction/list");
		mv.addObject("list",list);
		mv.addObject("pageBar", pageBar);
		mv.addObject("numPerPage", numPerPage);
		mv.addObject("cPage", cPage);
		mv.setViewName("auction/auctionList");
		return mv;
		
	}
	
	@RequestMapping("/auction/detail")
	public ModelAndView auctionDetail(ModelAndView mv) {
		System.out.println("들어옴?");
		mv.setViewName("auction/auctionDetail");
		return mv;
	}
}
