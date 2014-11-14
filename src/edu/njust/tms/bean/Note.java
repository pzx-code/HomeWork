package edu.njust.tms.bean;

import org.hibernate.Session;
import org.hibernate.Transaction;
import edu.njust.tms.base.BaseNote;

public class Note extends BaseNote {
	private static final long serialVersionUID = 1L;
    private static Session session;
    private static Transaction tr;
    
/*[CONSTRUCTOR MARKER BEGIN]*/
	public Note () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Note (java.lang.String id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Note (
		java.lang.String id,
		java.lang.String content,
		java.lang.String time) {

		super (
			id,
			content,
			time);
	}

/*[CONSTRUCTOR MARKER END]*/

//????????????
	public Note getNote()throws Exception{	
		session=HibernateSessionFactory.getSession();
		Note note=(Note)session.get(Note.class,"1");
		return note;
	}
//????????	
	public void updateNote(String content,String time)throws Exception{
		session=HibernateSessionFactory.getSession();
		tr=session.beginTransaction();
		Note note=(Note) session.get(Note.class, "1");
		note.setContent(content);
		note.setTime(time);
		session.update(note);
		tr.commit();
	}


}