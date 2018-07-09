package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {       //com.microsoft.sqlserver
	public static final String DBDRIVER="com.mysql.jdbc.Driver" ;
	public static final String DBURL="jdbc:mysql://localhost:3306/resourcehub";
	public static final String DBUSER="root";
	public static final String DBPASS=null;
	  public static Connection getConn(){
		  Connection conn=null;
		  try{
			  Class.forName(DBDRIVER);
		      conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
		  }catch(Exception e){
			 e.printStackTrace();
		  }
		  return conn;
	  }
       /* public void close(){
        	if(conn!=null){
        		try {
					conn.close();
				} catch (SQLException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
        	}
        }*/
}
