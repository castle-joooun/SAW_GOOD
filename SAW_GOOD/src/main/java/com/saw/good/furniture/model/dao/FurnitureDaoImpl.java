package com.saw.good.furniture.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.saw.good.cart.model.vo.Cart;
import com.saw.good.product.model.vo.Product;

@Repository
public class FurnitureDaoImpl implements FurnitureDao{

	@Override
	public List<Map<String, String>> cart(SqlSession session, String userId) {
		return session.selectList("furniture.cart", userId);
	}

	@Override
	public List<Product> category(SqlSession session, Map<String, String> categoryNames) {
		return session.selectList("furniture.category",categoryNames);
	}

	@Override
	public int totalData(SqlSession session, Map<String, String> categoryNames) {
		return session.selectOne("furniture.totalData", categoryNames);
	}
	
	



	
	
}
