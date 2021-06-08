package com.feedback.entity;

public class User {
	private String  experiance;
	private String name;
	private String email;
	private int age;
	private int phone;
	private String msg;
	
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public User(String experiance, String name, String email, int age, int phone, String msg) {
		super();
		this.experiance = experiance;
		this.name = name;
		this.email = email;
		this.age = age;
		this.phone = phone;
		this.msg = msg;
	}
	


	public String getExperiance() {
		return experiance;
	}
	public void setExperiance(String experiance) {
		this.experiance = experiance;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}


	@Override
	public String toString() {
		return "User [experiance=" + experiance + ", name=" + name + ", email=" + email + ", age=" + age + ", phone="
				+ phone + ", msg=" + msg + "]";
	}
	
	

}
