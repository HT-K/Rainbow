package com.rainbow.app.buy;

import java.util.List;

public interface BuyService {
//구매내역 저장
	public BuyDTO insertBuy(int memberSeq,String vodName);
//구매내역 조회
	public List<BuyDTO> selectBuy(int memberSeq);
}
