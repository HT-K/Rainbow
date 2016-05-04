
package com.rainbow.app.vod;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rainbow.web.mapper.VodMapper;
import com.rainbow.web.member.MemberDTO;




@Service
public class VodServiceImpl implements VodService{

	private static final Logger logger = LoggerFactory.getLogger(VodService.class);
	@Autowired SqlSession sqlSession;
	@Autowired VodDTO vod;
	@Autowired MemberDTO member;
	
	@Override
	public int insert(VodDTO vod) {
		logger.info("=== ServiceImpl <> insert()");
		VodMapper mapper = sqlSession.getMapper(VodMapper.class);
		return mapper.addMovie(vod);
	}

	@Override
	public List<VodDTO> getList() {
		logger.info("=== ServiceImpl <> getList()");
		VodMapper mapper = sqlSession.getMapper(VodMapper.class);
		return mapper.getVodList();
	}

	@Override
	public VodDTO getByName(VodDTO vod) {
		logger.info("=== ServiceImpl <> getByName()");
		VodMapper mapper = sqlSession.getMapper(VodMapper.class);
		return mapper.getByVodName(vod.getVodName());
	}

	@Override
	public MemberDTO login(MemberDTO member) {
		logger.info("=== ServiceImpl <> login()");
		VodMapper mapper = sqlSession.getMapper(VodMapper.class);
		return mapper.vodLogin(member);
	}

	@Override
	public int count() {
		logger.info("=== ServiceImpl <> count()");
		VodMapper mapper = sqlSession.getMapper(VodMapper.class);
		return mapper.VodCount();
	}

	@Override
	public int update(VodDTO vod) {
		logger.info("=== ServiceImpl <> update()");
		VodMapper mapper = sqlSession.getMapper(VodMapper.class);
		return mapper.VodUpdate(vod);
	}

	@Override
	public int delete(VodDTO vod) {
		logger.info("=== ServiceImpl <> delete()");
		VodMapper mapper = sqlSession.getMapper(VodMapper.class);
		return mapper.VodDelete(vod);
	}

	@Override
	public List<VodDTO> Search(String vodName) {
		logger.info("=== ServiceImpl <> Search()");
		VodMapper mapper = sqlSession.getMapper(VodMapper.class);
		return mapper.VodSearch(vodName);
	}
	
	
	

}