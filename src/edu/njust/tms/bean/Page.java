package edu.njust.tms.bean;
import java.util.*;
public class Page {
	public int curPage;//??????
	public int maxPage;//????????
	public int maxRowCount;//????????
	public int rowsPerPage;//????????
	public java.util.Vector data;//??????????????????
	
	public Page(){}	
	public Page(Message message)throws Exception{
		this.rowsPerPage=10;
		this.maxRowCount=message.getMessageCount();
		this.data=message.getResult();
        this.countMaxPage();
	}
	public void countMaxPage(){
		if(this.maxRowCount%this.rowsPerPage==0){
			this.maxPage=this.maxRowCount/this.rowsPerPage;
		}
		else{
			this.maxPage=this.maxRowCount/this.rowsPerPage+1;
		}
	}
	public Vector getResult(){
		return this.data;
	}
}
