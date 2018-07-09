package dbconnection;

import java.sql.*;

public class DdConnection {
	private static Connection conn;
	public static final String DBDRIVER="com.mysql.jdbc.Driver";
	public static final String DBURL="jdbc:mysql://localhost:3306/resourcehub";
	public static final String DBUSER="root";
	public static final String DBPASS=null;
	
	public static Connection getConnection(){
		try{
			 Class.forName(DBDRIVER).newInstance();
			 conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
			 System.out.println("success");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("¡¨Ω” ß∞‹");
			
		}
		
		return conn;
	}

}
