package useraction;

import java.util.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import user.User;
import userdao.UserDao;

public class UserAction extends ActionSupport {
		
	private User user;
	private int userId;
	private String userName;
	private String userPass;
	private String userType;
	private String userDirec;
	private ArrayList<User> userList;
	public ArrayList<User> getuserList() {
		return userList;
	}
	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserPass() {
		return userPass;
	}


	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}


	public String getUserType() {
		return userType;
	}


	public void setUserType(String userType) {
		this.userType = userType;
	}


	public String getUserDirec() {
		return userDirec;
	}


	public void setUserDirec(String userDirec) {
		this.userDirec = userDirec;
	}





		public String AddUser(){
			User user=new User();
			UserDao d=new UserDao();
			user.setUserId(userId);
			user.setUserName(userName);
			user.setUserPass(userPass);
			user.setUserType(userType);
			user.setUserDirec(userDirec);
			 
			int jg=d.AddUser(user);
			
			if(jg==1)
			{
				return SUCCESS;
			
			}else
				
			return ERROR;

		}
		public String SelectUser(){
			UserDao d=new UserDao();
			userList=d.SelectUser();
			
			ActionContext.getContext().put("list", userList);
			return SUCCESS;
		}
		public String DeleteUser(){
			UserDao d=new UserDao();
			
			if(d.DelectUser(userId)==1)
				return SUCCESS;
			else
				return ERROR;
		}
		public String SelectUserById()
		{User s=new User();
		UserDao d=new UserDao();
			s=d.SelectUserById(userId);
			//System.out.println(s.getUserId());
			ActionContext.getContext().put("list", s);
			return SUCCESS;
		}
		public String EditUser(){
			User user=new User();
			UserDao d=new UserDao();
			user.setUserId(userId);
			user.setUserName(userName);
			user.setUserPass(userPass);
			user.setUserType(userType);
			user.setUserDirec(userDirec);
			 
			d.EditUser(user);
				return SUCCESS;
			
		}
		public String LoginUser(){
			
			User user=new User();
			User user1=new User();
			UserDao d=new UserDao();
			user.setUserId(userId);
			user.setUserPass(userPass);
			user1=d.LoginUser(user)	;	
			ActionContext.getContext().getSession().put("user", user1);
			
		  if(user1.getUserId()!=0){
			  return SUCCESS;
		  }else{
			  return ERROR;
		  }
			 
		}
	
}
