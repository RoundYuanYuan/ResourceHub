package edu.nuc.action;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.nuc.dao.FileUploadDao;
import model.Source;
import user.User;

@SuppressWarnings("serial")
public class FileAction extends ActionSupport {
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String savePath;
	Source source=new Source();
	FileUploadDao filedao=new FileUploadDao();
	
	
	public Source getSource() {
		return source;
	}

	public void setSource(Source source) {
		this.source = source;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	
	public String fileUploadMethod() throws IOException
	{
		String ssoursId=UUID.randomUUID().toString();
		source.setSourceId(ssoursId);
		source.setSourcePath(savePath+"/"+ssoursId+uploadFileName);
		User user=(User)ActionContext.getContext().getSession().get("user");
		source.setSourceDirec(user.getUserDirec());
		source.setUserId(user.getUserId());
		System.out.println(user.getUserId());
		source.setSourceUser(user.getUserType());
		if(user.getUserType().equals("teacher"))
		{
			source.setIs_pass(1);
		}
		filedao.upLoadMethod(upload,savePath,ssoursId+uploadFileName);
		filedao.addResource(source);
		return "success";
	}
}
