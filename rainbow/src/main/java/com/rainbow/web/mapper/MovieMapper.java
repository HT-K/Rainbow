package com.rainbow.web.mapper;

import java.util.List;

import com.rainbow.web.movie.MovieDTO;

public interface MovieMapper {
	public int insert(MovieDTO movie);
	public List<MovieDTO> selectList(MovieDTO movie);
	public MovieDTO selectByName(MovieDTO movie);
	public MovieDTO selectById(MovieDTO movie);
	public MovieDTO selectBySeq(MovieDTO movie);
	public int count();
	public int update(MovieDTO movie);
	public int delete(MovieDTO movie);
}
