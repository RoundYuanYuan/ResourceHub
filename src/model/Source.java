package model;

public class Source {
private String sourceId;
private String sourceType;
private String sourceName;
private int sourceGrade;
private String sourceUser;
public String getSourceUser() {
	return sourceUser;
}
public void setSourceUser(String sourceUser) {
	this.sourceUser = sourceUser;
}
private String sourceDescrib;
private String sourceDirec;
private int userId;
private String sourcePath;
private int is_pass;
public String getSourceId() {
	return sourceId;
}
public void setSourceId(String sourceId) {
	this.sourceId = sourceId;
}
public String getSourceType() {
	return sourceType;
}
public void setSourceType(String sourceType) {
	this.sourceType = sourceType;
}
public String getSourceName() {
	return sourceName;
}
public void setSourceName(String sourceName) {
	this.sourceName = sourceName;
}
public int getSourceGrade() {
	return sourceGrade;
}
public void setSourceGrade(int sourceGrade) {
	this.sourceGrade = sourceGrade;
}
public String getSourceDescrib() {
	return sourceDescrib;
}
public void setSourceDescrib(String sourceDescrib) {
	this.sourceDescrib = sourceDescrib;
}
public String getSourceDirec() {
	return sourceDirec;
}
public void setSourceDirec(String sourceDirec) {
	this.sourceDirec = sourceDirec;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getSourcePath() {
	return sourcePath;
}
public void setSourcePath(String sourcePath) {
	this.sourcePath = sourcePath;
}
public int getIs_pass() {
	return is_pass;
}
public void setIs_pass(int is_pass) {
	this.is_pass = is_pass;
}
}
