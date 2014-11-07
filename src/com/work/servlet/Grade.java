package com.work.servlet;

import java.util.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.jspdev.biyesheji.base.BaseGrade;
import com.yourcompany.struts.form.GradeForm;

public class Grade extends BaseGrade {
	private static final long serialVersionUID = 1L;
	private static Session session;
	private static Transaction tr;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Grade () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Grade (com.jspdev.biyesheji.GradePK id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Grade (
		com.jspdev.biyesheji.GradePK id,
		java.lang.String year,
		java.lang.Long term,
		java.lang.Float grade,
		java.lang.String chongXiu) {

		super (
			id,
			year,
			term,
			grade,
			chongXiu);
	}

/*[CONSTRUCTOR MARKER END]*/

//????????	
	public Collection queryOperator(String hql) throws Exception{
		session=HibernateSessionFactory.getSession();
		Query query=session.createQuery(hql);
    	List list=query.list();  	
    	return list;
    }
//????????????????
	public static void addGrade(Grade grade)throws Exception{
		session=HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
		session.save(grade);
		tr.commit();
	}

//????????????????????????
	public Boolean isTrue(GradePK gradePK)throws Exception{
		session=HibernateSessionFactory.getSession();
		String hql="from Grade g where g.id.cnumber.id='"+gradePK.getCnumber().getId()+"' and g.id.snumber.id='"+gradePK.getSnumber().getId()+"'";
		Query query=session.createQuery(hql);
		List list=query.list();
		if(list.size()>0) return true;
		else return false;
	}
//??????????????????????????
	public Collection getAllGrades(String sno)throws Exception{
		String hql="select g.year,g.term,c.id,c.name,c.type,c.credit,g.grade from Grade g,Course c where g.id.snumber.id='"+sno+"' and g.id.cnumber.id=c.id order by g.year,g.term";
		return queryOperator(hql);
	}

//????????????????????????????
	public Collection getYearGrades(String sno,String year)throws Exception{
		String hql="select g.year,g.term,c.id,c.name,c.type,c.credit,g.grade from Grade g,Course c where g.id.snumber.id='"+sno+"' and g.id.cnumber=c.id"+" and g.year='"+year+"' order by g.term";
		return queryOperator(hql);
	}
	
//????????????????????????????
	public Collection getTermGrades(String sno,String year,Long term)throws Exception{
		String hql="select g.year,g.term,c.id,c.name,c.type,c.credit,g.grade from Grade g ,Course c where g.id.snumber.id='"+sno+"' and g.year='"+year+"' and g.term="+term+" and g.id.cnumber.id=c.id";
		return queryOperator(hql);
	}	

//??????????????????????????
	public static void changeGrade(String sno,String cno,Float grade)throws Exception{
		session=HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
		Student student=new Student(sno);
		Course course=new Course(cno);
		GradePK gradePK=new GradePK(student,course);
		Grade gra=(Grade) session.get(Grade.class,gradePK);
		gra.setGrade(grade);
		session.update(gra);
		tr.commit();
	}
}