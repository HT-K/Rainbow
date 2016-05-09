package com.rainbow.web.mapper;

import java.util.List;

import com.rainbow.app.buy.BuyDTO;

public interface BuyMapper {
	//구매내역 저장
		public BuyDTO addBuy(int memberSeq,String vodName);
	//구매내역 조회
		public List<BuyDTO> getBuy(int memberSeq);
}
