package edu.njust.tms.bean;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import edu.njust.tms.base.BaseStudent;
import edu.njust.tms.form.LoginForm;
import edu.njust.tms.form.PasswordForm;
import edu.njust.tms.form.StuInfoForm;



public class Student extends BaseStudent {
	private static final long serialVersionUID = 1L;
    private static Session session;
    private static Transaction tr;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Student () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Student (java.lang.String id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Student (
		java.lang.String id,
		java.lang.String name,
		java.lang.String sex,
		java.lang.Long age,
		java.lang.String department,
		java.lang.String address,
		java.lang.String phone,
		java.lang.String inTime,
		java.lang.String outTime,
		java.lang.String password,
		java.lang.String college) {

		super (
			id,
			name,
			sex,
			age,
			department,
			address,
			phone,
			inTime,
			outTime,
			password,
			college);
	}

/*[CONSTRUCTOR MARKER END]*/
	
//????????	
	public Collection queryOperator(String hql) throws Exception{
		session=HibernateSessionFactory.getSession();
      /*ThreadLocal Session(????HibernateSessionFactory.java)??????????????????????????????session????????????,??????????????session.close()????.*/		
		Query query=session.createQuery(hql);
    	List list=query.list();
    	return list;
    }
	
//????????????
	public static void addStudent(Student student)throws Exception{
		session=HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
		session.save(student);
		tr.commit();
	}
	
//????????????
	public static void deleteStudent(String id)throws Exception{
		session=HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
		session.delete(session.load(Student.class,id));
		tr.commit();
	}	

//????????????????????????
	public Boolean isTrue(String id) throws Exception{
		session=HibernateSessionFactory.getSession();
		String hql="from Student s where s.id='"+id+"'";
		Query query=session.createQuery(hql);
		List list=query.list();
		if(list.size()>0) return true;
		else return false;
	}
//??????????????????????
	public static Student getStudent(String id) throws Exception{
		session=HibernateSessionFactory.getSession();
		Student student=(Student) session.get(Student.class, id);
		return student;
	}
	
//??????????????????????
	public boolean isStudent(LoginForm student) throws Exception{
		String hql="from Student s where s.id='"+student.getId()+"' and s.password='"+student.getPassword()+"'";		
		List list=(List) queryOperator(hql);
		if(list.size()>0)
			return true;
		else
		    return false;
	}

//????????????????
	public Collection getAllStudents()throws Exception{
		String hql="from Student s";
		return queryOperator(hql);
	}
//??????????????????????    
    public Collection getInformation(String id)throws Exception{
    	String hql="from Student s where s.id='"+id+"'";
        return queryOperator(hql);
    }

//??????????????????????
	public Collection getCollegeStudents(String college)throws Exception{
		String hql="from Student s where s.college='"+college+"'";
		return queryOperator(hql);
	}

//??????????????????????
	public Collection getDepartmentStudents(String department)throws Exception{
		String hql="from Student s where s.department='"+department+"'";
		return queryOperator(hql);
	}

//??????????????????????
	public Collection getInTimeStudents(String inTime)throws Exception{
		String hql="from Student s where s.inTime='"+inTime+"'";
		return queryOperator(hql);
	}
//????????????
    public void chahgeStuInfo(StuInfoForm student)throws Exception{
    	session=HibernateSessionFactory.getSession();
    	tr=session.beginTransaction();
    	Student stu=Student.getStudent(student.getNumber());
    	stu.setId(student.getNumber());
    	stu.setName(student.getName());
    	stu.setSex(student.getSex());
    	stu.setAge(Long.parseLong(student.getAge()));
    	stu.setDepartment(student.getDepartment());
    	stu.setAddress(student.getAddress());
    	stu.setPhone(student.getPhone());
    	stu.setInTime(student.getInTime());
    	stu.setOutTime(student.getOutTime());
    	stu.setCollege(student.getCollege());
    	session.update(stu);
    	tr.commit();
    }
 
//????????
    public static void changePassword(PasswordForm passwordForm)throws Exception{
    	session=HibernateSessionFactory.getSession();
    	tr=session.beginTransaction();
    	Student student=Student.getStudent(passwordForm.getStuId());
    	student.setPassword(passwordForm.getPassword1());
    	session.update(student);
    	tr.commit();	
    }
}