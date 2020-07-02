package com.hxt.bean;

public class User {//用户
	private String user_id;
	private String password;
	private String role;//角色
	private String user_name;
	private String school;//学院
	private String grade;//年级
	private String uclass;//班级
	private String contact;//联系方式
	
	public User() {
	}
	
	public User(String user_id, String password, String role, String user_name, String school, String grade, String uclass,
			String contact) {
		super();
		this.user_id = user_id;
		this.password = password;
		this.role = role;
		this.user_name = user_name;
		this.school = school;
		this.grade = grade;
		this.uclass = uclass;
		this.contact = contact;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getUclass() {
		return uclass;
	}
	public void setUclass(String uclass) {
		this.uclass = uclass;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	
}
