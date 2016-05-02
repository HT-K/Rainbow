package com.rainbow.web.reply;

import java.util.List;


public interface ReplyService {
	
		public int insert(ReplyDTO reply); 
		public List<ReplyDTO> getList();
		public List<ReplyDTO> getByName(ReplyDTO reply);
		public ReplyDTO getById(ReplyDTO reply);
		public int count();
		public int update(ReplyDTO reply);
		public int delete(ReplyDTO reply);
}
