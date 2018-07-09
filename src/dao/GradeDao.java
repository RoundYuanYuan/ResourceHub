package dao;

import java.sql.*;
import java.util.*;

import conn.Conn;
import grade.Grade;

public class GradeDao {
	public int addGrade(Grade grade) {
		int ig=0;
		try {
		System.out.println(grade.getGrade());
		Conn conn=new Conn();
		Connection jdb=conn.getConnection();
		System.out.println("Dao插入成功");
		String sql2="insert into tb_grade values(?,?,?)";
		PreparedStatement pst=jdb.prepareStatement(sql2);
		pst.setInt(1, grade.getSourceId());
		pst.setInt(2, grade.getUserId());
		pst.setInt(3, grade.getGrade());
		ig=pst.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ig;
	}
	//分页查询
	public ArrayList<Grade> findAllGrade(){
		ResultSet rs=null;
		ArrayList<Grade> gradeList=new ArrayList<Grade>();
		try {
			Conn conn=new Conn();
			Connection jdb=conn.getConnection();
			String sql="select * from tb_grade";
			PreparedStatement pst=jdb.prepareStatement(sql);
			rs=pst.executeQuery();
			while(rs.next()) {
				Grade grade=new Grade();
				grade.setSourceId(rs.getInt("sourceId"));
				grade.setUserId(rs.getInt("userId"));
				grade.setGrade(rs.getInt("grade"));
				gradeList.add(grade);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gradeList;
	}
	
	public int deleteGrade(int sourceId,int userId) {
		int re=0;
		try {
			Conn conn=new Conn();
			Connection jdb=conn.getConnection();
			String sql="delete from tb_grade where sourceId=? and userId=?";
			PreparedStatement pst=jdb.prepareStatement(sql);
			pst.setInt(1,sourceId);
			pst.setInt(2,userId);
			re=pst.executeUpdate();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return re;
	}
	
	public double getAverage(int sourceId) {
		ResultSet rs=null;
		double average=0;
		try {
			Conn conn=new Conn();
			Connection jdb=conn.getConnection();
			String sql="select AVG(grade) Average from tb_grade where sourceId=?";
			PreparedStatement pst=jdb.prepareStatement(sql);
			pst.setInt(1,sourceId);
			rs=pst.executeQuery();
			if(rs.next()) {
				average=rs.getInt("Average");
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return average;
	}
}
