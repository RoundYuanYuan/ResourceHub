package edu.nuc.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

import conn.Conn;
import grade.Grade;
import model.Source;

public class FileUploadDao {
	public void upLoadMethod(File upload,String savePath,String uploadFileName) throws IOException
	{
		FileInputStream fis=null;
		FileOutputStream fos=null;
		try {
			fis=new FileInputStream(upload);
			String newFileName=uploadFileName;
			File distFile=new File(savePath+"/"+newFileName);
			fos=new FileOutputStream(distFile);
			byte[] buffer=new byte[1024];
			int len=0;
			while((len=fis.read(buffer))>0){
				 fos.write(buffer, 0, len);
			}
			 
			} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			finally{
				try {
					fos.close();
					fis.close();
				} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public int addResource(Source source) {
		int ig=0;
		try {
		//System.out.println(grade.getGrade());
		Conn conn=new Conn();
		Connection jdb=conn.getConnection();
		System.out.println("Dao≤Â»Î≥…π¶");
		String sql="insert into tb_resource values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst=jdb.prepareStatement(sql);
		pst.setString(1,source.getSourceId() );
		System.out.println(source.getSourceId());
		pst.setString(2,source.getSourceType() );
		pst.setString(3,source.getSourceName() );
		pst.setInt(4, source.getSourceGrade());
		pst.setString(5,source.getSourceDescrib() );
		pst.setString(6,source.getSourceDirec() );
		pst.setInt(7,source.getUserId() );
		pst.setString(8, source.getSourcePath());
		pst.setInt(9, source.getIs_pass());
		pst.setString(10, source.getSourceUser());
		ig=pst.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ig;
	}

}
