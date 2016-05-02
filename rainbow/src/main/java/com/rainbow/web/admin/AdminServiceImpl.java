package com.rainbow.web.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rainbow.web.mapper.AdminMapper;



@Service
public class AdminServiceImpl implements AdminService{
	private static final Logger logger = LoggerFactory.getLogger(AdminService.class);
	@Autowired SqlSession sqlSession; 
	@Autowired AdminDTO admin;
		
	

	

	@Override
	public AdminDTO login(AdminDTO admin) {
		//관리자 로그인
		logger.info("AdminService : login() 진입 후 id = {}",admin.getId());
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		if (mapper.login(admin) != null) {
			logger.info("AdminService : login() 성공 후 id = {}",admin.getId());
			return admin;
		} else {
			logger.info("AdminService : login() 실패, 널 반환 {}",admin.toString());
			logger.info("AdminService : login() 실패 후 id = {}",admin.getId());
			logger.info("AdminService : login() 실패 후 pw = {}",admin.getPassword());
			return null;
		}
	}
	

	

}
