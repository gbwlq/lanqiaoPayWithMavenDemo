package org.lanqiao.entity;
//账户
public class Account {
private int accountid;//编号
private String userName;//用户名
private long accountBalance;//余额
private String bankcard;//银行卡
public int getAccountid() {
	return accountid;
}
public void setAccountid(int accountid) {
	this.accountid = accountid;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public long getAccountBalance() {
	return accountBalance;
}
public void setAccountBalance(long accountBalance) {
	this.accountBalance = accountBalance;
}
public String getBankcard() {
	return bankcard;
}
public void setBankcard(String bankcard) {
	this.bankcard = bankcard;
}
@Override
public String toString() {
	return "Account [accountid=" + accountid + ", userName=" + userName + ", accountBalance=" + accountBalance
			+ ", bankcard=" + bankcard + "]";
}
public Account(int accountid, String userName, long accountBalance, String bankcard) {
	super();
	this.accountid = accountid;
	this.userName = userName;
	this.accountBalance = accountBalance;
	this.bankcard = bankcard;
}
public Account() {
	super();
	// TODO Auto-generated constructor stub
}

}
