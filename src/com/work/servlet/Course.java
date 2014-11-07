package com.work.servlet;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.jspdev.biyesheji.base.BaseCourse;
import com.yourcompany.struts.form.CourseForm;

public class Course extends BaseCourse {
	private static final long serialVersionUID = 1L;
    private static Session session;
    private static Transaction tr;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Course () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Course (java.lang.String id) {
		super(id);
		
	}

	/**
	 * Constructor for required fields
	 */
	public Course (
		java.lang.String id,
		java.lang.String name,
		java.lang.Long credit,
		java.lang.String teacher,
		java.lang.String time,
		java.lang.String address,
		java.lang.String type) {

		super (
			id,
			name,
			credit,
			teacher,
			time,
			address,
			type);
	}

/*[CONSTRUCTOR MARKER END]*/

//????????	
	public Collection queryOperator(String hql) throws Exception{
		session=HibernateSessionFactory.getSession();
		Query query=session.createQuery(hql);
    	List list=query.list();
    	return list;
    }
	
//????????????????????????
	public Boolean isTrue(String id) throws Exception{
		session=HibernateSessionFactory.getSession();
		String hql="from Course c where c.id='"+id+"'";
		Query query=session.createQuery(hql);
		List list=query.list();
		if(list.size()>0) return true;
		else return false;
	}

//????????????????????
	public static Course getCourse(String id) throws Exception{
		session=HibernateSessionFactory.getSession();
		Course course=(Course)session.get(Course.class,id);
		return course;
	}
	
//????????
	public static void addCourse(Course course)throws Exception{
		session=HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
		session.save(course);
		tr.commit();
	}
	
//????????
	public static void deleteCourse(String id)throws Exception{
		session=HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
		session.delete(session.load(Course.class, id));
		tr.commit();
	}
	
//????????????????
	public Collection getCourses()throws Exception{
		String hql="from Course c";
		return queryOperator(hql);
	}
	
//??????????????????????
	public Collection getChoseCourse()throws Exception{
		String hql="from Course c where c.type='??????????'";
		return queryOperator(hql);
	}
	
//????????????
	public void changeCourseInfo(String id,Course course)throws Exception{
		session=HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
		Course cour=Course.getCourse(id);
		cour.setId(course.getId());
		cour.setName(course.getName());
		cour.setCredit(course.getCredit());
		cour.setType(course.getType());
		cour.setTeacher(course.getTeacher());
		cour.setTime(course.getTime());
		cour.setAddress(course.getAddress());
		session.update(cour);
		tr.commit();
	}
}