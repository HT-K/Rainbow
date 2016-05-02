package com.rainbow.app.vod;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.rainbow.web.mapper.MemberMapper;
import com.rainbow.web.mapper.VodMapper;
import com.rainbow.web.member.MemberController;
import com.rainbow.web.member.MemberDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("classpath:META-INF/*-context.xml")
public class VodServieImplTest {

	private static final Logger logger = LoggerFactory
			.getLogger(MemberController.class);

	@Autowired
	SqlSession session;


	public void testInsert() {

		VodDTO vod = new VodDTO();
		VodMapper mapper = session.getMapper(VodMapper.class);
		vod.setVodName("친구3");
		vod.setVodContent("니 내랑 부산 접수할래?");
		vod.setVodPrice("1000");
		vod.setVodCategory("느와르,액션");
		vod.setVodTime(124);
		vod.setVodRating("6.26");
		vod.setVodUrl("/youtube/friend");
		vod.setVodImage("/vod_image/noir/friend2.png");
		vod.setVodFree("n");
		vod.setVodGrade("18세이상관람가");
		vod.setVodActor("유오성,주진모");
		vod.setVodDirector("곽경택");
		vod.setVodCountry("한국");
		logger.info(" === VodServiceImplTest <> testInsert(){} ===", mapper.addMovie(vod));
		
	}
	public void testGetList() {
		VodDTO vod = new VodDTO();
		List<VodDTO> list = new ArrayList<VodDTO>();
		VodMapper mapper = session.getMapper(VodMapper.class);
		vod.setVodName("친구2");
		list = mapper.getVodList();
		logger.info(" === VodServiceImplTest <> testGetList(){} ===", list.size());
		assertThat(list.size(), is(not(0)));

	}
	
	public void testGetByName() {
		VodDTO vod = new VodDTO();
		VodMapper mapper = session.getMapper(VodMapper.class);
		vod.setVodName("친구2");
		vod = mapper.getByVodName(vod.getVodName());
		logger.info(" === VodServiceImplTest <> testGetByName(){} ===", vod.getVodName());
	
	}


	public void testLogin() {
		MemberDTO check = new MemberDTO();
		VodMapper mapper = session.getMapper(VodMapper.class);
		check.setId("bingoori");
		check.setPassword("1");
		check = mapper.vodLogin(check);
		logger.info(" === VodServiceImplTest <> testLogin(){} ===",check.getId());
		assertEquals("bingoori", check.getId());
	}
	

	public void testCount() {
		VodMapper mapper = session.getMapper(VodMapper.class);
		logger.info(" === VodServiceImplTest <> testCount(){} ===", mapper.VodCount());
		
	}

	
	@Test
	public void testUpdate() {
		
		VodDTO vod = new VodDTO();
		VodMapper mapper = session.getMapper(VodMapper.class);
		vod.setVodName("친구3");
		vod = mapper.getByVodName("친구3");
		logger.info(" === VodServiceImplTest <> testUpdate(){} ===", vod);
		vod.setVodContent("니 내랑 부산 접수할랭???");
		vod.setVodCountry("한쿡인");
//		logger.info(" === VodServiceImplTest <> testInsert(){} ===", mapper.addMovie(vod));
		
	}

	public void testDelete() {
		fail("Not yet implemented");
	}

}
