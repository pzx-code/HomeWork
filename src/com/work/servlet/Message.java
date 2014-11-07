package com.work.servlet;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.jspdev.biyesheji.base.BaseMessage;
import com.yourcompany.struts.form.MessageForm;



public class Message extends BaseMessage {
	private static final long serialVersionUID = 1L;
	private static Session session;
	private static Transaction tr;
	private static Vector v;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Message () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Message (java.lang.Long id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Message (
		java.lang.Long id,
		java.lang.String title,
		java.lang.String name,
		java.lang.String time,
		java.lang.String content) {

		super (
			id,
			title,
			name,
			time,
			content);
	}

/*[CONSTRUCTOR MARKER END]*/
	
//????????
    public static void addMessage(Message message) throws Exception{
    	session=HibernateSessionFactory.getSession();
    	tr=session.beginTransaction();
    	session.save(message);
    	tr.commit();
    	session.close();
    }
//????????
    public void deleteMessage(String title,String name,String email,String time,String content)throws Exception{
    	session=HibernateSessionFactory.getSession();
    	tr=session.beginTransaction();
    	String hql="delete Message m where m.title='"+title+"'and m.name='"+name+"'and m.email='"+email+"'and m.time='"+time+"'and m.content='"+content+"'";
    	session.createQuery(hql).executeUpdate();
    	tr.commit();
    }
//????????????  
    public int getMessageCount()throws Exception{
    	session=HibernateSessionFactory.getSession();
    	Query query=session.createQuery("from Message m ");
    	List list=query.list();
    	return list.size();
    }
   
//????????????????
    public Collection getAllMessage()throws Exception{
    	session=HibernateSessionFactory.getSession();
    	Query query=session.createQuery("from Message m ");
    	List list=query.list();
    	return list;
    }
//??????????????????,????????Page??????   
    public Page listDate(String page_num)throws Exception{
    	try{
    		Page page=new Page(this);
    		int pageNum=Integer.parseInt(page_num);
    		session=HibernateSessionFactory.getSession();
    	//	String hql="select top "+pageNum*page.rowsPerPage+"* from Message m order by m.time";
    	    String hql="from Message m where m.id between"+(pageNum-1)*10+" to"+ pageNum*10;
    		Query query=session.createQuery(hql);
    		List list=query.list();
    		for(int i=0;i<list.size();i++){
    	//	for(int i=(pageNum-1)*page.rowsPerPage;i<pageNum*page.rowsPerPage;i++){
    			v.add(list.get(i));
    		}
    		page.curPage=pageNum;
    		page.data=v;
    		return page;
    	}
    	catch(Exception e){
    		e.printStackTrace();
    		throw e;
    	}
    }
 
//????????????    
    public Vector getResult()throws Exception{
    	return v;
    }
}