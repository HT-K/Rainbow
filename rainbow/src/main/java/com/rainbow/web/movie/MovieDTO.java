package com.rainbow.web.movie;

import org.springframework.stereotype.Component;

@Component
public class MovieDTO {
int movie_seq, rating;
String title, genre, open_date, grade, runningtime,director,actor,content,image;

public MovieDTO() {}
public MovieDTO(int movie_seq,int rating,
		String title,String genre,String open_date,
		String grade,String runningtime,String director,
		String actor,String content,String image) {
	this.movie_seq = movie_seq;
	this.rating = rating;
	this.title = title;
	this.genre = genre;
	this.open_date = open_date; 
	this.grade = genre; 
	this.runningtime = runningtime;
	this.director = director;
	this.actor = actor;
	this.content = content;
	this.image = image;
}
public int getMovie_seq() {
	return movie_seq;
}
public void setMovie_seq(int movie_seq) {
	this.movie_seq = movie_seq;
}
public int getRating() {
	return rating;
}
public void setRating(int rating) {
	this.rating = rating;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getGenre() {
	return genre;
}
public void setGenre(String genre) {
	this.genre = genre;
}
public String getOpen_date() {
	return open_date;
}
public void setOpen_date(String open_date) {
	this.open_date = open_date;
}
public String getGrade() {
	return grade;
}
public void setGrade(String grade) {
	this.grade = grade;
}
public String getRunningtime() {
	return runningtime;
}
public void setRunningtime(String runningtime) {
	this.runningtime = runningtime;
}
public String getDirector() {
	return director;
}
public void setDirector(String director) {
	this.director = director;
}
public String getActor() {
	return actor;
}
public void setActor(String actor) {
	this.actor = actor;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
@Override
public String toString() {
	return "MovieDTO [movie_seq=" + movie_seq + ", rating=" + rating + ", 제목=" + title + ", 장르=" + genre
			+ ", 개봉일=" + open_date + ", 등급 =" + grade + ", 상영시간 =" + runningtime + ", 감독 ="
			+ director + ", 배우 =" + actor + ", 내용 =" + content + ", 이미지 =" + image + "]";
}

}
