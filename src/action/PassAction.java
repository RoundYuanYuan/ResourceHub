package action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.ComAndRevDao;
import model.Source;

public class PassAction extends ActionSupport {
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private Source source;
  private List<Source> sourceOne =new ArrayList<Source>();
  private ComAndRevDao comAndRevDao=new ComAndRevDao();
public List<Source> getSourceOne() {
	return sourceOne;
}
public void setSourceOne(List<Source> sourceOne) {
	this.sourceOne = sourceOne;
}
public Source getSource() {
	return source;
}
public void setSource(Source source) {
	this.source = source;
}
@Override
public String execute() throws Exception {
	// TODO 自动生成的方法存根
	
	this.sourceOne=comAndRevDao.isPass();
	/*Iterator<Source> list=sourceOne.iterator();
	while(list.hasNext()){
	  Source s=list.next();
	  System.out.println("asdasd"+s.getSourceName());
	}
	*/
	return  SUCCESS;
}
public String no(){
	comAndRevDao.delete(source);
	return SUCCESS;
}
public String YON(){
	System.out.println(source.getSourceId());
	comAndRevDao.Update(source);
 	return SUCCESS;
}
public ComAndRevDao getComAndRevDao() {
	return comAndRevDao;
}
public void setComAndRevDao(ComAndRevDao comAndRevDao) {
	this.comAndRevDao = comAndRevDao;
}
  
}
