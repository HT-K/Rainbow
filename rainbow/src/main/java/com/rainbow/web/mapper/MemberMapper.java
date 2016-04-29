package com.rainbow.web.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.rainbow.web.member.MemberDTO;

@Repository
public interface MemberMapper {
	/**
	 * CRUD 인터페이스를 만들 때 이 기준으로 만든다고 생각하면 된다.
	 * C : create 생성
	 * R : read 조회
	 * U : update 수정
	 * D : delete 삭제
	 * 
	 * */
	
	// C 회원 가입(등록) 
	public int insert(MemberDTO member);
	// R 모든 회원 조회
	public List<MemberDTO> selectList();
	// R 이름으로 회원 조회 (중복된 이름 허용)
	public List<MemberDTO> selectByName(MemberDTO member);
	// R 로그인 한 회원 조회
	public MemberDTO login(MemberDTO member);
	// R 아이디로 회원 조회
	public MemberDTO selectById(MemberDTO member);
	// R 회원 수 카운트
	public int count();
	// U 회원 정보 수정
	public int update(MemberDTO member);
	// D 회원 정보 삭제
	public int delete(MemberDTO member);
}
