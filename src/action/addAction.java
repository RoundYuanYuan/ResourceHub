package action;

import java.sql.ResultSet;
import java.util.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.GradeDao;
import grade.Grade;

public class addAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Grade> gradeList;
	private double aver;
	private int currentPage;
	private int lastPage;
	private int sourceId;
	private int userId;
	private GradeDao dao=new GradeDao();
	private Grade grade;
	public List<Grade> getGradeList() {
		return gradeList;
	}
	public void setGradeList(List<Grade> gradeList) {
		this.gradeList = gradeList;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public int getSourceId() {
		return sourceId;
	}
	public void setSourceId(int sourceId) {
		this.sourceId = sourceId;
	}
	public Grade getGrade() {
		return grade;
	}
	public void setGrade(Grade grade) {
		this.grade = grade;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public double getAver() {
		return aver;
	}
	public void setAver(double aver) {
		this.aver = aver;
	}
	
	public String addGrade() {
		System.out.println("璋冪敤Action");
		System.out.println(grade.getGrade());
		int re=dao.addGrade(grade);
		if(re!=0) {
			System.out.println("鎻掑叆鎴愬姛锛�");
		}
		return INPUT;
	}
	
	public String getAllGradeByPage(){
		gradeList=dao.findAllGrade();
		return SUCCESS;	
	}
	
	public String deleteGrade() {
		dao.deleteGrade(sourceId, userId);
		return SUCCESS;
	}
	
	public String getSourceById() {
		ActionContext.getContext().getSession().put("test",sourceId);
		return SUCCESS;
	}
	
	public String getAverage() {
		this.aver=dao.getAverage(sourceId);
		return SUCCESS;
	}
	
}
