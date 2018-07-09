package conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {
	private static Connection conn;
	public static final String DBDRIVER="org.gjt.mm.mysql.Driver" ;
	public static final String DBURL="jdbc:mysql://localhost:3306/resourcehub?useUnicode=true&characterEncoding=utf-8";
	public static final String DBUSER="root";
	public static final String DBPASS=null;
	public static Connection getConnection(){
		try{
			 Class.forName(DBDRIVER).newInstance();
			 conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("数据库连接错误");
			
		}
		
		return conn;
	}

}
