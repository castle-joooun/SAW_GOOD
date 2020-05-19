package com.saw.good.auction.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saw.good.auction.model.dao.AuctionDao;
import com.saw.good.auction.model.vo.Auction;
import com.saw.good.auction.model.vo.AuctionMember;
import com.saw.good.auction.model.vo.AuctionSearch;
@Service
public class AuctionServiceIpml implements AuctionService {
	
	@Autowired
	private SqlSession session;
	
	@Autowired
	private AuctionDao dao;
	@Autowired
	private Logger logger;

	//경매페이지 불러오기
	@Override
	public List<Auction> selectAcList(int cPage, int numPerPage) {
		// TODO Auto-generated method stub
		return dao.selectAcList(session,cPage,numPerPage);
	}

	@Override
	public int countAuction() {
		// TODO Auto-generated method stub
		return dao.countAuction(session);
	}
	//카테고리 리스트
	@Override
	public List<Auction> selectCtList(int cPage, int numPerPage, AuctionSearch category) {
		// TODO Auto-generated method stub
		return dao.selectCtList(session,cPage,numPerPage,category);
	}

	@Override
	public int countCtAuction(AuctionSearch category) {
		// TODO Auto-generated method stub
		return dao.countCtAuction(session,category);
	}

	@Override
	public List<Auction> searchAuction(int cPage, int numPerPage, Map<String,String> map) {
		// TODO Auto-generated method stub
		return dao.searchAuction(session,cPage,numPerPage,map);
	}

	@Override
	public int countAcSearch(Map<String, String> map) {
		// TODO Auto-generated method stub
		return dao.countAcSearch(session,map);
	}

	@Override
	public Auction selectDtAuction(Auction acBoardNo) {
		// TODO Auto-generated method stub
		return dao.selectDtAuction(session,acBoardNo);
	}

	@Override
	public List<Map<String, String>> selectAcMember(Auction acBoardNo) {
		// TODO Auto-generated method stub
		return dao.selectAcMember(session,acBoardNo);
	}
	
	
	@Override
	public int selectFsPrice(Auction ac) {
		// TODO Auto-generated method stub
		return dao.selectFsPrice(session,ac);
	}

	//경매 현재금액 가져오기
	@Override
	public Auction selectNowPrice(Auction a) {
		// TODO Auto-generated method stub
		return dao.selectNowPrice(session,a);
	}

	
	//현재 최고입찰자
	@Override
	public AuctionMember selectFsMem(Auction a) {
		// TODO Auto-generated method stub
		return dao.selectFsMem(session,a);
	}

	//조건문 통과 후 최고입찰멤버 인서트
	@Override
	public int insertBidPrice(AuctionMember am) {
		// TODO Auto-generated method stub
		return dao.insertBidPrice(session,am);
	}
	//최고입츨 금액 업뎃
	@Override
	public int updateNowPrice(Auction a) {
		// TODO Auto-generated method stub
		return dao.updateNowPrice(session,a);
	}
	
	
	
	
	
	
	
	
	
	

}
