package com.Bean;

public class Bookingpage {
  private int id,userid;
  public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
private String fname,lname,contactno,trainno,trainname,from_where,to_where,depart,adults,children,tclass;
public String getFrom_where() {
	return from_where;
}
public void setFrom_where(String from_where) {
	this.from_where = from_where;
}
public String getTo_where() {
	return to_where;
}
public void setTo_where(String to_where) {
	this.to_where = to_where;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}
public String getTrainno() {
	return trainno;
}
public void setTrainno(String trainno) {
	this.trainno = trainno;
}
public String getTrainname() {
	return trainname;
}
public void setTrainname(String trainname) {
	this.trainname = trainname;
}

public String getDepart() {
	return depart;
}
public void setDepart(String depart) {
	this.depart = depart;
}
public String getAdults() {
	return adults;
}
public void setAdults(String adults) {
	this.adults = adults;
}
public String getChildren() {
	return children;
}
public void setChildren(String children) {
	this.children = children;
}
public String getTclass() {
	return tclass;
}
public void setTclass(String tclass) {
	this.tclass = tclass;
}
@Override
public String toString() {
	return "Bookingpage [id=" + id + ", userid=" + userid + ", fname=" + fname + ", lname=" + lname + ", contactno="
			+ contactno + ", trainno=" + trainno + ", trainname=" + trainname + ", from_where=" + from_where
			+ ", to_where=" + to_where + ", depart=" + depart + ", adults=" + adults + ", children=" + children
			+ ", tclass=" + tclass + "]";
}


  
}
