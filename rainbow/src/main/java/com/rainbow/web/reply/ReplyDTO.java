package com.rainbow.web.reply;

import org.springframework.stereotype.Component;



@Component
public class ReplyDTO {
	private int replySeq, movieSeq;
	private String writerName, regTime, replyContent, title;
	
	public ReplyDTO() {}
	public ReplyDTO(int replySeq, String writerName, String regTime ,String replyContent, int movieSeq, String title) {
		this.replySeq = replySeq;
		this.writerName = writerName;
		this.regTime =regTime;
		this.replyContent = replyContent;
		this.movieSeq = movieSeq;
		this.title = title;
	}
	
	public int getReplySeq() {
		return replySeq;
	}
	public void setReplySeq(int replySeq) {
		this.replySeq = replySeq;
	}
	public int getMovieSeq() {
		return movieSeq;
	}
	public void setMovieSeq(int movieSeq) {
		this.movieSeq = movieSeq;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getRegTime() {
		return regTime;
	}
	public void setRegTime(String regTime) {
		this.regTime = regTime;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
