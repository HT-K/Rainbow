package com.rainbow.web.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rainbow.web.mapper.MovieMapper;
import com.rainbow.web.movie.MovieDTO;



@Service
public class AdminServiceImpl implements AdminService{
	private static final Logger logger = LoggerFactory.getLogger(AdminService.class);
	@Autowired SqlSession sqlSession; 
	
	@Override
	public List<MovieDTO> getList(MovieDTO movie) {
		logger.info("MovieService-getList{}");
		MovieMapper mapper = sqlSession.getMapper(MovieMapper.class);
		return mapper.selectList(movie);
	}
	@Override
	public MovieDTO getBySeq(MovieDTO movie) {
		logger.info("MovieService-getBySeq{}");
		MovieMapper mapper = sqlSession.getMapper(MovieMapper.class);
		return mapper.selectBySeq(movie);
	}
	@Override
	public int update(MovieDTO movie) {
		logger.info("MovieService-update{}");
		MovieMapper mapper = sqlSession.getMapper(MovieMapper.class);
		return mapper.update(movie);
	}
	@Override
	public int remove(MovieDTO movie) {
		logger.info("MovieService-remove{}");
		MovieMapper mapper = sqlSession.getMapper(MovieMapper.class);
		return mapper.delete(movie);
	}


}
