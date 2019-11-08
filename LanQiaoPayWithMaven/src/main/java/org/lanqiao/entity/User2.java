package org.lanqiao.entity;

public class User2 {
	//private String userID;//身份证号
	private String userName;//用户名
	private String userEmail;//电子邮箱
	private String loginPassWord;//登陆密码
	private String payPassWord;//支付密码
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getLoginPassWord() {
		return loginPassWord;
	}
	public void setLoginPassWord(String loginPassWord) {
		this.loginPassWord = loginPassWord;
	}
	public String getPayPassWord() {
		return payPassWord;
	}
	public void setPayPassWord(String payPassWord) {
		this.payPassWord = payPassWord;
	}
	@Override
	public String toString() {
		return "User2 [userName=" + userName + ", userEmail=" + userEmail + ", loginPassWord=" + loginPassWord
				+ ", payPassWord=" + payPassWord + "]";
	}
	public User2(String userName, String userEmail, String loginPassWord, String payPassWord) {
		super();
		this.userName = userName;
		this.userEmail = userEmail;
		this.loginPassWord = loginPassWord;
		this.payPassWord = payPassWord;
	}
	public User2() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
