package edu.nuc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.Conn;
import model.Source;

public class FileQueryDao {
	
	public String sql(String sourceUser,String sourceType,String sourceDirec) {
	String sql="select sourceId,sourcePath,sourceName,sourceGrade,sourceDescrib,sourceDirec,userId from tb_resource"; 
    StringBuilder strsql =new StringBuilder(sql);  
    
    if(!(sourceUser.equals("null")&&sourceType.equals("null")&&sourceDirec.equals("null"))) {
    	strsql.append(" where is_pass=1");
    	sql=strsql.toString();
    }
    if((!sourceUser.equals("null"))){  
        strsql.append(" and sourceUser='"+sourceUser+"'");
        sql=strsql.toString(); 
    }  
    if((!sourceType.equals("null"))){  
        strsql.append(" and sourceType='"+sourceType+"'");
        sql=strsql.toString();   
    }  
    if((!sourceDirec.equals("null"))){  
        strsql.append(" and sourceDirec = '"+sourceDirec+"'");
        sql=strsql.toString();   
    }
    return sql;
	}
	
	public ArrayList<Source> querySourceMethod(String sql){
		ResultSet rs=null;
		ArrayList<Source> sourceList=new ArrayList<Source>();
		try {
			Conn conn=new Conn();
			Connection jdb=conn.getConnection();
			PreparedStatement pst=jdb.prepareStatement(sql);
			rs=pst.executeQuery();
			while(rs.next()) {
				Source source = new Source();
				source.setSourceId(rs.getString("sourceId"));
				source.setSourceName(rs.getString("sourceName"));
				source.setSourceGrade(rs.getInt("sourceGrade"));
				source.setSourceDescrib(rs.getString("sourceDescrib"));
				source.setSourceDirec(rs.getString("sourceDirec"));
				source.setUserId(rs.getInt("userId"));
				source.setSourcePath(rs.getString("sourcePath"));
				sourceList.add(source);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sourceList;
	}
}
