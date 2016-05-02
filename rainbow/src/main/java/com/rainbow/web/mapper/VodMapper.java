package com.rainbow.web.mapper;

import java.util.List;

import com.rainbow.app.vod.VodDTO;
import com.rainbow.web.member.MemberDTO;

public interface VodMapper {
	// C 영화 (등록) 
	public int addMovie(VodDTO vod); // 추상 메소드
	// R 모든 영화ㅣ조회
	public List<VodDTO> getVodList();
	// R 이름으로 영화 조회 (중복된 이름 허용)
	public VodDTO getByVodName(String string);
	// R 로그인 한 회원 조회
	public MemberDTO vodLogin(MemberDTO member);
	// R 아이디로 영화 조회
	public VodDTO getByVodId(VodDTO vod);
	// R 영화 수 카운트
	public int VodCount();
	// U 영화 정보 수정
	public int VodUpdate(VodDTO vod);
	// D 영화 정보 삭제
	public int VodDelete(VodDTO vod); 
}
