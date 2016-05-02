package com.rainbow.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.rainbow.web.purchase.PurchaseDTO;

@Repository
public interface PurchaseMapper {
	public int insert(PurchaseDTO purchase);
	public List<PurchaseDTO> selectList();
	public List<PurchaseDTO> selectByMemberId(PurchaseDTO purchase);
	public PurchaseDTO selectByPurchaseSeq(PurchaseDTO purchase);
	public int count();
	public int update(PurchaseDTO purchase);
	public int delete(PurchaseDTO purchase);
}