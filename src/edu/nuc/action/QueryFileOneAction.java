package edu.nuc.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.ComAndRevDao;
import edu.nuc.dao.FileQueryDao;
import model.Comment;
import model.Revert;
import model.Source;

public class QueryFileOneAction extends ActionSupport {
	private Source source = new Source();
	List<Source> sources=new ArrayList<Source>();
	FileQueryDao fd=new FileQueryDao();
	public Source getSource() {
		return source;
	}

	public void setSource(Source source) {
		this.source = source;
	}

	public List<Source> getSources() {
		return sources;
	}

	public void setSources(List<Source> sources) {
		this.sources = sources;
	}

	public String QueryOneFMethod()
	{   
		String sql="select * from tb_resource where sourceId="+source.getSourceId()+"";
		sources=fd.querySourceMethod(sql);
		int pageS=3;
		this.commentList=comAndRevDao.findById(source);
		int listLength=this.commentList.size();
		
		if(listLength%pageS==0){
			this.lastPage=listLength/pageS;
		}else
			this.lastPage=listLength/pageS+1;
	     if(currentPage<1){
	    	 currentPage=1;
	     }
	     if(currentPage>this.lastPage){
	    	 currentPage=this.lastPage;
	     }
	     int startIndex=(this.currentPage-1)*pageS;
	     int endIndex=startIndex+pageS;
	     if(endIndex>=listLength) endIndex=listLength;
	     //this.commentList=this.commentList.subList(startIndex, endIndex);
	 	this.revertList=comAndRevDao.findByComId();
	 /*   Iterator<Comment> comm=commentList.iterator();
	    while(comm.hasNext()){
	    	Comment comment=comm.next();
	    	System.out.println(comment.getComTest());
	    }
	     System.out.println();*/
		return SUCCESS;
	}

	
	
	
	/*      */
	private Comment comment;
	private Revert revert;
	 private List<Comment> commentList;
	 private List<Revert> revertList;
	 public List<Comment> getCommentList() {
		return commentList;
	}
	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
	}
	private int currentPage=1;  //当前页
	  public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	private int lastPage; //尾页
    private ComAndRevDao comAndRevDao=new ComAndRevDao();
  	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	
	
	public String addComment(){
		// TODO 自动生成的方法存根
		System.out.println(comment.getComTest());
		comment.setUserName("saasd");
		 int jg=comAndRevDao.addComments(comment);
		 System.out.println("评论成功");
		return "Csuccess";
	}
	
	public String addRevert(){
		 System.out.println(revert.getRevertText());
		revert.setUserName("saasd");
		revert.setUserId(1);
		System.out.println(revert.getComId());
		 int jg=comAndRevDao.addRevertes(revert);
		 System.out.println("回复成功");
		return "Rsuccess";
	}
/*
	public String getAllByPage(){
		int pageS=3;
		int sourceId=1;
		this.commentList=comAndRevDao.findById(sourceId);
		int listLength=this.commentList.size();
		
		if(listLength%pageS==0){
			this.lastPage=listLength/pageS;
		}else
			this.lastPage=listLength/pageS+1;
	     if(currentPage<1){
	    	 currentPage=1;
	     }
	     if(currentPage>this.lastPage){
	    	 currentPage=this.lastPage;
	     }
	     int startIndex=(this.currentPage-1)*pageS;
	     int endIndex=startIndex+pageS;
	     if(endIndex>=listLength) endIndex=listLength;
	     this.commentList=this.commentList.subList(startIndex, endIndex);
	 	this.revertList=comAndRevDao.findByComId();
	 /*   Iterator<Comment> comm=commentList.iterator();
	    while(comm.hasNext()){
	    	Comment comment=comm.next();
	    	System.out.println(comment.getComTest());
	    }
	     System.out.println();
	     return SUCCESS;
	}*/
	public Revert getRevert() {
		return revert;
	}
	public void setRevert(Revert revert) {
		this.revert = revert;
	}
	public List<Revert> getRevertList() {
		return revertList;
	}
	public void setRevertList(List<Revert> revertList) {
		this.revertList = revertList;
	}
	

}
