/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package edu.njust.tms.form;

import javax.servlet.http.HttpServletRequest;
import com.opensymphony.xwork2.ActionSupport;

public class CourseForm extends ActionSupport {
	
	private static final long serialVersionUID = 1L;

	/** credit property */
	private String credit;

	/** type property */
	private String type;

	/** time property */
	private String time;

	/** address property */
	private String address;

	/** teacher property */
	private String teacher;

	/** name property */
	private String name;

	/** id property */
	private String id;

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
	 * Returns the credit.
	 * @return String
	 */
	public String getCredit() {
		return credit;
	}

	/** 
	 * Set the credit.
	 * @param credit The credit to set
	 */
	public void setCredit(String credit) {
		this.credit = credit;
	}

	/** 
	 * Returns the type.
	 * @return String
	 */
	public String getType() {
		return type;
	}

	/** 
	 * Set the type.
	 * @param type The type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/** 
	 * Returns the time.
	 * @return String
	 */
	public String getTime() {
		return time;
	}

	/** 
	 * Set the time.
	 * @param time The time to set
	 */
	public void setTime(String time) {
		this.time = time;
	}

	/** 
	 * Returns the address.
	 * @return String
	 */
	public String getAddress() {
		return address;
	}

	/** 
	 * Set the address.
	 * @param address The address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/** 
	 * Returns the teacher.
	 * @return String
	 */
	public String getTeacher() {
		return teacher;
	}

	/** 
	 * Set the teacher.
	 * @param teacher The teacher to set
	 */
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	/** 
	 * Returns the name.
	 * @return String
	 */
	public String getName() {
		return name;
	}

	/** 
	 * Set the name.
	 * @param name The name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/** 
	 * Returns the number.
	 * @return String
	 */
	public String getId() {
		return id;
	}

	/** 
	 * Set the number.
	 * @param number The number to set
	 */
	public void setId(String id) {
		this.id = id;
	}
}