package com.rainbow.app.vod;

import java.util.List;

import com.rainbow.web.member.MemberDTO;


public interface VodService {

	// C 영화 (등록) 
	public int insert(VodDTO vod); // 추상 메소드
	// R 모든 영화ㅣ조회
	public List<VodDTO> getList();
	// R 이름으로 영화 조회 (중복된 이름 허용)
	public VodDTO getByName(VodDTO vod);
	// R 로그인 한 회원 조회
	public MemberDTO login(MemberDTO member);
	// R 영화 수 카운트
	public int count();
	// U 영화 정보 수정
	public int update(VodDTO vod);
	// D 영화 정보 삭제
	public int delete(VodDTO vod); 
 	
}