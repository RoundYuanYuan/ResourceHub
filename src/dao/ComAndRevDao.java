package dao;
import java.text.DateFormat;  
import java.util.Date;  
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import db.DbConnection;
import model.Comment;
import model.Revert;
import model.Source;

public class ComAndRevDao {
	 private Connection conn;
     public ComAndRevDao(){
    	 conn=DbConnection.getConn();
     }
     	 
   
      public int addComments(Comment comment){
     	 int jg=0;
     	 String datetime=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(Calendar.getInstance().getTime());
    
     	 try {	 PreparedStatement pstmt;
     	       conn=DbConnection.getConn();
     String sql_Insert="insert into tb_comment(userId,userName,sourceId,comTest,datetime) values(?,?,?,?,?)";
			    pstmt=conn.prepareStatement(sql_Insert);
			  /*  pstmt.setInt(1, comment.getComId());*/
			    pstmt.setInt(1,comment.getUserId());
			    pstmt.setString(2, comment.getUserName());
			    pstmt.setInt(3,comment.getSourceId());
			    pstmt.setString(4, comment.getComTest());
			    pstmt.setString(5, datetime);
			    jg=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
          return jg;
      }


	public List<Comment> findById(Source source) {
		// TODO 自动生成的方法存根
		 PreparedStatement pstmt=null;
    	 ResultSet rs=null;
    	ArrayList<Comment> commentList = null;
    	 try {  
    		 commentList=new ArrayList<Comment>();
    		 String sql="select * from tb_comment where sourceId=?";
    	   pstmt=conn.prepareStatement(sql);
    	   pstmt.setString(1,source.getSourceId());
    	 rs=pstmt.executeQuery();
    	 while(rs.next()){
    		Comment comment=new Comment();
    		comment.setComId(rs.getInt(1));
    		comment.setUserId(rs.getInt(2));
    		comment.setUserName(rs.getString(3));
    		comment.setSourceId(rs.getInt(4));
    		comment.setComTest(rs.getString(5));
    		comment.setDatetime(rs.getString(6));
    		commentList.add(comment);
    	   }
    	 } catch (Exception e) {
				// TODO 自动生成的 catch 块
				
	}    return commentList;
}

	public List<Revert> findByComId() {
		// TODO 自动生成的方法存根
		 PreparedStatement pstmt=null;
    	 ResultSet rs=null;
    	ArrayList<Revert> revertList = null;
    	 try {  
    		 revertList=new ArrayList<Revert>();
    		 String sql="select * from tb_revert";
    	   pstmt=conn.prepareStatement(sql);
    	 rs=pstmt.executeQuery();
    	 while(rs.next()){
            Revert revert=new Revert();
            revert.setRevertId(rs.getInt(1));
            revert.setComId(rs.getInt(2));
            revert.setUserId(rs.getInt(3));
            revert.setUserName(rs.getString(4));
          revert.setRevertText(rs.getString(5));
          revert.setComName(rs.getString(6));
          revert.setDatetime(rs.getString(7));
            revertList.add(revert);
    	   }
    	 } catch (Exception e) {
				// TODO 自动生成的 catch 块
				
	}    return revertList;
}
	public List<Source> isPass(){
		PreparedStatement pstmt=null;
	ResultSet rs=null;
		ArrayList<Source> sourceOne = null;

		//pstmt.setString(1, sourceType);
	try{ 
		sourceOne=new ArrayList<Source>();
     String sql="select * from tb_resource where is_pass='"+0+"'";
	 pstmt = conn.prepareStatement(sql);
   rs=pstmt.executeQuery();
	while(rs.next()){
		Source source=new Source();
		source.setSourceId(rs.getString(1));
			source.setSourceType(rs.getString(2));
			source.setSourceName(rs.getString(3));
			source.setSourceGrade(rs.getInt(4));
			source.setSourceDescrib(rs.getString(5));
			source.setSourceDirec(rs.getString(6));
			source.setUserId(rs.getInt(7));
			source.setSourcePath(rs.getString(8));
			source.setIs_pass(rs.getInt(9));
			sourceOne.add(source);
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	return sourceOne;
	}


	public int addRevertes(Revert revert) {
		// TODO 自动生成的方法存根
	 	 int jg=0;
	 	String datetime=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(Calendar.getInstance().getTime());
	    
     	 try {	 PreparedStatement pstmt;
     	       conn=DbConnection.getConn();
     String sql_Insert="insert into tb_revert(comId,userId,userName,revertText,comName,datetime) values(?,?,?,?,?,?)";
			    pstmt=conn.prepareStatement(sql_Insert);
			  /*  pstmt.setInt(1, comment.getComId());*/
			    pstmt.setInt(1,revert.getComId());
			    pstmt.setInt(2,revert.getUserId());
			    pstmt.setString(3,revert.getUserName());
			    pstmt.setString(4, revert.getRevertText());
			    pstmt.setString(5, revert.getComName());
			    pstmt.setString(6, datetime);
			     jg=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
          return jg;
	}
	public int Update(Source source){
		 int jg=0;
		 int a=1;
		try {	 PreparedStatement pstmt;
	       conn=DbConnection.getConn();
String sql_Insert="update tb_resource set is_pass=? where sourceId=?";
		    pstmt=conn.prepareStatement(sql_Insert);
		    pstmt.setInt(1, a);
		    pstmt.setString(2,source.getSourceId());
		    jg=pstmt.executeUpdate();
		} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
	          return jg;

	}
public int delete(Source source){
	 int jg=0; 
	try {	 PreparedStatement pstmt;
       conn=DbConnection.getConn();
String sql="delete  from tb_resource where sourceId=?";
	    pstmt=conn.prepareStatement(sql);
	   pstmt.setString(1,source.getSourceId());
	    jg=pstmt.executeUpdate();
	} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
          return jg;

}
}
