package model;

public class Comment {
  private int comId;
  private String userName;
  private int userId;
  private int sourceId;
  private String comTest;
  private String datetime;
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
public int getSourceId() {
	return sourceId;
}
public void setSourceId(int sourceId) {
	this.sourceId = sourceId;
}
public String getComTest() {
	return comTest;
}
public void setComTest(String comTest) {
	this.comTest = comTest;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getDatetime() {
	return datetime;
}
public void setDatetime(String datetime) {
	this.datetime = datetime;
}
  
}
