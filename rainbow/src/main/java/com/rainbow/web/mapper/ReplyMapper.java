package com.rainbow.web.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.rainbow.web.reply.ReplyDTO;

@Repository
public interface ReplyMapper {
	public int insert(ReplyDTO reply); 
	public List<ReplyDTO> getList();
	public List<ReplyDTO> selectByReplySeq(ReplyDTO reply);
	public int count();
	public int update(ReplyDTO reply);
	public int delete(ReplyDTO reply);
}
