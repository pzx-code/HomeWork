/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.work.struts.form;

import javax.servlet.http.HttpServletRequest;
import com.opensymphony.xwork2.ActionSupport;

/** 
 * MyEclipse Struts
 * Creation date: 05-15-2008
 * 
 * XDoclet definition:
 * @struts.form name="teachersQueryForm"
 */
public class TeachersQueryForm extends ActionSupport {
	/*
	 * Generated fields
	 */

	/** age property */
	private String age;

	/** post property */
	private String post;

	/** id property */
	private String id;

	/** department property */
	private String department;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the age.
	 * @return String
	 */
	public String getAge() {
		return age;
	}

	/** 
	 * Set the age.
	 * @param age The age to set
	 */
	public void setAge(String age) {
		this.age = age;
	}

	/** 
	 * Returns the post.
	 * @return String
	 */
	public String getPost() {
		return post;
	}

	/** 
	 * Set the post.
	 * @param post The post to set
	 */
	public void setPost(String post) {
		this.post = post;
	}

	/** 
	 * Returns the id.
	 * @return String
	 */
	public String getId() {
		return id;
	}

	/** 
	 * Set the id.
	 * @param id The id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/** 
	 * Returns the department.
	 * @return String
	 */
	public String getDepartment() {
		return department;
	}

	/** 
	 * Set the department.
	 * @param department The department to set
	 */
	public void setDepartment(String department) {
		this.department = department;
	}
}