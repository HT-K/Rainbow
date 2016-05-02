package com.rainbow.web.purchase;

import java.util.List;

public interface PurchaseService {
	public int insert(PurchaseDTO purchase);
	public List<PurchaseDTO> getList();
	public List<PurchaseDTO> getByMemberId(PurchaseDTO purchase);
	public PurchaseDTO getByPurchaseSeq(PurchaseDTO purchase);
	public int count();
	public int update(PurchaseDTO purchase);
	public int delete(PurchaseDTO purchase);
}