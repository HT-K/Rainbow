package com.rainbow.web.purchase;

import org.springframework.stereotype.Component;

@Component
public class PurchaseDTO {
	private int purchaseSeq, adultCount, studentCount, purchasePrice;
	private String memberId, movieTitle, screenNumber, beginTime, reserveSeat, date;

	public int getPurchaseSeq() {
		return purchaseSeq;
	}

	public void setPurchaseSeq(int purchaseSeq) {
		this.purchaseSeq = purchaseSeq;
	}

	public int getAdultCount() {
		return adultCount;
	}

	public void setAdultCount(int adultCount) {
		this.adultCount = adultCount;
	}

	public int getStudentCount() {
		return studentCount;
	}

	public void setStudentCount(int studentCount) {
		this.studentCount = studentCount;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
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

	public String getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	public String getReserveSeat() {
		return reserveSeat;
	}

	public void setReserveSeat(String reserveSeat) {
		this.reserveSeat = reserveSeat;
	}

	public int getPurchasePrice() {
		return purchasePrice;
	}

	public void setPurchasePrice(int purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "PurchaseDTO [purchaseSeq=" + purchaseSeq + ", adultCount="
				+ adultCount + ", studentCount=" + studentCount
				+ ", purchasePrice=" + purchasePrice + ", memberId=" + memberId
				+ ", movieTitle=" + movieTitle + ", screenNumber="
				+ screenNumber + ", beginTime=" + beginTime + ", reserveSeat="
				+ reserveSeat + ", date=" + date + "]";
	}
}
