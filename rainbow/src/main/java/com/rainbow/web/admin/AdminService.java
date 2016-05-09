package com.rainbow.web.admin;

import java.util.List;

import com.rainbow.web.movie.MovieDTO;


public interface AdminService {
	//영화 전체 리스트
	public List<MovieDTO> getList(MovieDTO movie);
	//영화 타이블이름으로 선택 
	public MovieDTO getBySeq(MovieDTO movie);
	//영화 업데이트
	public int update(MovieDTO movie);
	//영화 삭제
	public int remove(MovieDTO movie);	

}
