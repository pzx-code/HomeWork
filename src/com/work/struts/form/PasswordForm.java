/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.work.struts.form;

import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.ActionSupport;


public class PasswordForm extends ActionSupport {
	/*
	 * Generated fields
	 */

	/** password2 property */
	private String password2;

	/** teaId property */
	private String teaId;

	/** stuId property */
	private String stuId;

	/** password1 property */
	private String password1;

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
		ActionErrors errors=new ActionErrors();
		if(getPassword1()==null||getPassword1().length()<1){
			errors.add("password1",new ActionError("error.password.required"));
		}
		else if(getPassword1().length()<6){
			errors.add("password1", new ActionError("error.passwordLength.required"));
		}
		return errors;
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
	 * Returns the password2.
	 * @return String
	 */
	public String getPassword2() {
		return password2;
	}

	/** 
	 * Set the password2.
	 * @param password2 The password2 to set
	 */
	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	/** 
	 * Returns the teaId.
	 * @return String
	 */
	public String getTeaId() {
		return teaId;
	}

	/** 
	 * Set the teaId.
	 * @param teaId The teaId to set
	 */
	public void setTeaId(String teaId) {
		this.teaId = teaId;
	}

	/** 
	 * Returns the stuId.
	 * @return String
	 */
	public String getStuId() {
		return stuId;
	}

	/** 
	 * Set the stuId.
	 * @param stuId The stuId to set
	 */
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}

	/** 
	 * Returns the password1.
	 * @return String
	 */
	public String getPassword1() {
		return password1;
	}

	/** 
	 * Set the password1.
	 * @param password1 The password1 to set
	 */
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
}