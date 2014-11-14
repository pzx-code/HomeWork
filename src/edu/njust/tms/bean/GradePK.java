package edu.njust.tms.bean;

import edu.njust.tms.base.BaseGradePK;

public class GradePK extends BaseGradePK {
	private static final long serialVersionUID = 1L;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public GradePK () {}
	
	public GradePK (
			edu.njust.tms.bean.Student snumber,
			edu.njust.tms.bean.Course cnumber) {

		super (
			snumber,
			cnumber);
	}
/*[CONSTRUCTOR MARKER END]*/


}