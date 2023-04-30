package com.Bean;

public class Userpage {
	private int id;
   private String fname,lname,birthdate,contactno,address,email,password,confirm_password;
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
public String getBirthdate() {
	return birthdate;
}
public void setBirthdate(String birthdate) {
	this.birthdate = birthdate;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public String getConfirm_password() {
	return confirm_password;
}
public void setConfirm_password(String confirm_password) {
	this.confirm_password = confirm_password;
}
@Override
public String toString() {
	return "signup [id=" + id + ", fname=" + fname + ", lname=" + lname + ", birthdate=" + birthdate + ", contactno="
			+ contactno + ", address=" + address + ", email=" + email + ", password=" + password + ", confirm_password="
			+ confirm_password + "]";
}
}
