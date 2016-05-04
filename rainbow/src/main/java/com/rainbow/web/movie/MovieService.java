package com.rainbow.web.movie;

import java.util.List;

public interface MovieService {
	public int input(MovieDTO movie);
<<<<<<< HEAD
	public List<MovieDTO> getList(MovieDTO movie);
	public List<MovieDTO> getByName(MovieDTO movie);
	public MovieDTO getById(MovieDTO movie);
=======
	public MovieDTO getById(MovieDTO movie);
	public List<MovieDTO> getByName(MovieDTO movie);
	public List<MovieDTO> getList();
>>>>>>> hyehyeon
	public int count();
	public int update(MovieDTO movie);
	public int remove(MovieDTO movie);	
}
