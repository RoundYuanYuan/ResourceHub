package userdao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import dbconnection.DdConnection;
import user.User;

public class UserDao {


	private Statement state;
	private PreparedStatement pstate;
	

	
	public int AddUser(User user) {
		int jg = 0;
		try {
		    DdConnection conn=new DdConnection();
		      Connection dbc=conn.getConnection();
	String sql=("insert into tb_user(userId,userName,userPass,userType,userDirec) values(?,?,?,?,?)");
					
						pstate=dbc.prepareStatement(sql);
						pstate.setInt(1,user.getUserId());
						pstate.setString(2, user.getUserName());
						pstate.setString(3, user.getUserPass());
						pstate.setString(4,user.getUserType());
						pstate.setString(5, user.getUserDirec());
					    jg=pstate.executeUpdate();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

						
					    System.out.println(jg);
				
			return jg;

		 }
	
	 
	public ArrayList<User> SelectUser(){
		ResultSet rs;
		ArrayList<User> userList=new ArrayList<User>();
		try{
			DdConnection conn=new DdConnection();
		      Connection dbc=conn.getConnection();
			String sql="select * from tb_user";
			PreparedStatement pst=dbc.prepareStatement(sql);
			   rs=pst.executeQuery();
			while(rs.next()){
				User user=new User();
				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setUserPass(rs.getString(3));
				user.setUserType(rs.getString(4));
				user.setUserDirec(rs.getString(5));
				
			    userList.add(user);
			}    
			}catch(Exception e){
				e.printStackTrace();
				}
	
	return userList;
	
}
	
	
	public int DelectUser(int userId)
	{
		int jg=0;
		
		try {	DdConnection conn=new DdConnection();
		      Connection dbc=conn.getConnection();
	String sql="delete from tb_user where userId='"+userId+"'";
	
		PreparedStatement pst=dbc.prepareStatement(sql);
		jg=pst.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
				
		
		return jg;
		}
	public User SelectUserById(int userId){
		ResultSet rs=null;
		User s=new User();
		try{DdConnection conn=new DdConnection();
	      Connection dbc=conn.getConnection();
			String sql="select * from tb_user where userId='"+userId+"'";
			PreparedStatement pst=dbc.prepareStatement(sql);
			rs=pst.executeQuery();
			if(rs.next()){
				s.setUserId(rs.getInt(1));
				s.setUserName(rs.getString(2));
				s.setUserPass(rs.getString(3));
				s.setUserType(rs.getString(4));
				s.setUserDirec(rs.getString(5));
				
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return s;
	}
	
	public int EditUser(User user){
		int jg=0;
		try{
			DdConnection conn=new DdConnection();
		      Connection dbc=DdConnection.getConnection();
	String sql="update tb_user set userName=?,userPass=?,userType=?,userDirec=? where userId=?";
					 	pstate=dbc.prepareStatement(sql);
						pstate.setString(1, user.getUserName());
						pstate.setString(2, user.getUserPass());
						pstate.setString(3,user.getUserType());
						pstate.setString(4, user.getUserDirec());
						pstate.setInt(5,user.getUserId());
					    jg=pstate.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return jg;
		}
	public User LoginUser(User user){
		  	int flag=0;
		   ResultSet rs=null;
		   User user1=new User();
		 try{
			 DdConnection conn=new DdConnection();
		      Connection dbc=DdConnection.getConnection();
		String sql_login="select * from tb_user where userId=? and userPass=?";
		 PreparedStatement pst=dbc.prepareStatement(sql_login);
		 pst.setInt(1, user.getUserId());
		 pst.setString(2, user.getUserPass());
		 rs=pst.executeQuery();
		 if(rs.next()){
		   user1.setUserId(rs.getInt(1));
		   user1.setUserName(rs.getString(2));
		   user1.setUserPass(rs.getString(3));
		   user1.setUserType(rs.getString(4));
		   user1.setUserDirec(rs.getString(5));
			 }
		 }catch(Exception e){
			 e.printStackTrace();
		 }  
		 return user1;
	}		      
      
}

