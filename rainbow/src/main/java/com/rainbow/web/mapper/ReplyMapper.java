package com.rainbow.web.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.rainbow.web.reply.ReplyDTO;

@Repository
public interface ReplyMapper {
	public int insert(ReplyDTO reply); 
	public List<ReplyDTO> getList();
	public List<ReplyDTO> getByName(ReplyDTO reply);
	public ReplyDTO login(ReplyDTO reply);
	public ReplyDTO getById(ReplyDTO reply);
	public int count();
	public int update(ReplyDTO reply);
	public int delete(ReplyDTO reply);
}
