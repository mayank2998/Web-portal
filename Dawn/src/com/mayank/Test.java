package com.mayank;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.util.Map;  

import org.apache.struts2.dispatcher.SessionMap;  
import org.apache.struts2.interceptor.SessionAware;


public class Test {
	
	


	SessionFactory sf =
		    new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	
	 
	
	
	public void setUser(UserDetails u){
		// TODO Auto-generated method stub
		
		Session se = sf.openSession();
		se.beginTransaction();
		se.save(u);
		se.getTransaction().commit();
		se.close();
		
	}
	
	public String Validate(UserDetails u) {
		UserDetails user = new UserDetails();
		
		Session session = sf.openSession();
		session.beginTransaction();
		user=(UserDetails) session.get(UserDetails.class, u.getRoll());
		//System.out.println(user.getRoll()+""+user.getPassword());
		//System.out.println(u.getPassword()+""+u.getRoll());
		if(user.getPassword().equals(u.getPassword()) && user.getRoll() == u.getRoll()) {
			
			return "success";
		
		}
		return "error";
		//return user;
	}
	
	/* */ 

}
