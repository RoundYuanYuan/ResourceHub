package model;

public class Revert {
   private int revertId;
   private int comId;
   private int userId;
   private String userName;
   private String revertText;
   private String comName;
   private String datetime;
public String getDatetime() {
	return datetime;
}
public void setDatetime(String datetime) {
	this.datetime = datetime;
}
public int getRevertId() {
	return revertId;
}
public void setRevertId(int revertId) {
	this.revertId = revertId;
}
public int getComId() {
	return comId;
}
public void setComId(int comId) {
	this.comId = comId;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getRevertText() {
	return revertText;
}
public void setRevertText(String revertText) {
	this.revertText = revertText;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getComName() {
	return comName;
}
public void setComName(String comName) {
	this.comName = comName;
}
   
}
