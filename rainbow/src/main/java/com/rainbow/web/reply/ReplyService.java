package com.rainbow.web.reply;

import java.util.List;


public interface ReplyService {
	
		public int insert(ReplyDTO reply); 
		public List<ReplyDTO> getList(ReplyDTO reply);
		public List<ReplyDTO> getByReplySeq(ReplyDTO reply);
		public int count();
		public int update(ReplyDTO reply);
		public int delete(ReplyDTO reply);
}
