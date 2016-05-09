package com.rainbow.app.buy;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rainbow.web.mapper.BuyMapper;
import com.rainbow.web.mapper.VodMapper;

@Service
public class BuyServiceImpl implements BuyService{
	
	private static final Logger logger = LoggerFactory.getLogger(BuyServiceImpl.class);
	@Autowired SqlSession sqlSession;
	@Autowired BuyDTO vod;

	@Override
	public BuyDTO insertBuy(int memberSeq,String vodName) { 
		return null;
	}

	@Override
	public List<BuyDTO> selectBuy(int memberSeq) { 
		logger.info(" === selectBuy() ===");
		BuyMapper mapper = sqlSession.getMapper(BuyMapper.class);  
		return mapper.getBuy(memberSeq);
	}

}
