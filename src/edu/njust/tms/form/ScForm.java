/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package edu.njust.tms.form;

import javax.servlet.http.HttpServletRequest;
import com.opensymphony.xwork2.ActionSupport;

public class ScForm extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/*
	 * Generated fields
	 */	
	private String sno;
    private String[] cno;
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

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String[] getCno() {
		return cno;
	}

	public void setCno(String[] cno) {
		this.cno = cno;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	/** 
	 * Returns the sno.
	 * @return String
	 */
	
    
	}