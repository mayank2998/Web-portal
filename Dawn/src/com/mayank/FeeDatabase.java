package com.mayank;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FeeDatabase {
	
	
	SessionFactory sf = new Configuration().configure("fee.cfg.xml").buildSessionFactory();
	public void setFeedetails(FeeDeatils f) {

		
		
		Session session = sf.openSession();
		session.beginTransaction();
		session.save(f);
	
		session.getTransaction().commit();
		session.close();
	
	}
	
	public String getFeedetails() {
		
		String stat="";
		Session session = sf.openSession();
		session.beginTransaction();
		Query query =session.createQuery("from FeeDeatils where roll=390 and semester=1");
		List<FeeDeatils> fee = (List<FeeDeatils>)query.list();
		for(FeeDeatils f:fee) {
			stat = f.getStatus();
		}
		
		return stat;
		
	}
	


}
