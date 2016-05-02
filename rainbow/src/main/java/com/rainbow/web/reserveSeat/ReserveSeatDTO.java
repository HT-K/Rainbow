package com.rainbow.web.reserveSeat;

import org.springframework.stereotype.Component;

@Component
public class ReserveSeatDTO {
	private int reserveSeq;
	private String movieTitle,screenNumber,reserveDate,beginTime,seat;
	public int getReserveSeq() {
		return reserveSeq;
	}
	public void setReserveSeq(int reserveSeq) {
		this.reserveSeq = reserveSeq;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getScreenNumber() {
		return screenNumber;
	}
	public void setScreenNumber(String screenNumber) {
		this.screenNumber = screenNumber;
	}
	public String getReserveDate() {
		return reserveDate;
	}
	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}
	public String getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	@Override
	public String toString() {
		return "ReserveSeatDTO [reserveSeq=" + reserveSeq + ", movieTitle="
				+ movieTitle + ", screenNumber=" + screenNumber
				+ ", reserveDate=" + reserveDate + ", beginTime=" + beginTime
				+ ", seat=" + seat + "]";
	}
	
	
	
}
