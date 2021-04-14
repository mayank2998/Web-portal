package com.mayank; 
import java.io.IOException;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;  
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

@Entity
public class UserDetails implements SessionAware {
	@Id
	private int roll;
	private String fullname;
	private String password;
	
	
	
	
	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public int getRoll() {
		return roll;
	}

	public void setRoll(int roll) {
		this.roll = roll;
	}

	public String getPassword() {
		return password;
	}
	
	
	public void setPassword(String password) {
		this.password = password;
	}
	@Transient
	private SessionMap<String,Object> sessionMap;
	
	public void setSession(Map<String, Object> map) {  
	    sessionMap=(SessionMap)map;  
	} 
	public String doPost() {
		
		Test t= new Test();
		
		if(t.Validate(this)=="success") {
			sessionMap.put("login","true");
			sessionMap.put("roll",getRoll());
			sessionMap.put("password",getPassword());
			return "success";
		}
		else {
			return "error";
		}
            
        }
	
	
	
	public String Registration() {
		Test t= new Test();
		t.setUser(this);
		return "success";
	}
	
	public String logout(){  
		System.out.println("//");
	    if(sessionMap!=null){  
	        sessionMap.invalidate();  
	    }  
	    return "success";  
	}
	

}
