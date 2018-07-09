package action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.ComAndRevDao;
import model.Comment;
import model.Revert;

public class ComAndRevAction extends ActionSupport {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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
	private int currentPage=1;  //��ǰҳ
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
	private int lastPage; //βҳ
    private ComAndRevDao comAndRevDao=new ComAndRevDao();
  	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	
	
	public String addComment(){
		// TODO �Զ����ɵķ������
		System.out.println(comment.getComTest());
		comment.setUserName("saasd");
		 int jg=comAndRevDao.addComments(comment);
		 System.out.println("���۳ɹ�");
		return "Csuccess";
	}
	
	public String addRevert(){
		 System.out.println(revert.getRevertText());
		revert.setUserName("saasd");
		revert.setUserId(1);
		System.out.println(revert.getComId());
		 int jg=comAndRevDao.addRevertes(revert);
		 System.out.println("�ظ��ɹ�");
		return "Rsuccess";
	}

	/*public String getAllByPage(){
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
