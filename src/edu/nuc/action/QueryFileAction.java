package edu.nuc.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.nuc.dao.FileQueryDao;
import model.Source;

public class QueryFileAction extends ActionSupport {
	List<Source> sourcelist=new ArrayList<Source>();
	
	Source source=new Source();
	
	public Source getSource() {
		return source;
	}

	public void setSource(Source source) {
		this.source = source;
	}
	
	public List<Source> getSourcelist() {
		return sourcelist;
	}

	public void setSourcelist(List<Source> sourcelist) {
		this.sourcelist = sourcelist;
	}

	public String queryFile()
	{
		FileQueryDao fd=new FileQueryDao();
		String sql=fd.sql(source.getSourceUser(), source.getSourceType(), source.getSourceDirec());
		System.out.println(sql);
		sourcelist=fd.querySourceMethod(sql);
		Iterator<Source> iter=sourcelist.iterator();
		while(iter.hasNext())
		{
			Source source=(Source)iter.next();
			System.out.println(source.getSourceDirec()+source.getSourceName()+source.getSourceType()+source.getSourceDescrib()+source.getUserId());
		}
		return SUCCESS;
	}
}
