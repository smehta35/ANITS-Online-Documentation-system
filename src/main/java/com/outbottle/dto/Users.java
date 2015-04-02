/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.outbottle.dto;

/**
 *
 * @author dell
 */
public class Users {
    private String userId;
	private String password;
	
        private String firstname;
        private String lastname;
	 private String reenter;
	
	/**
	 * @return the userId
	 */
        public String getfirstname()
        {
            return firstname;
        }
        public void setfirstname(String firstname) {
		this.firstname=firstname ;
	}
        public String getlastname()
        {
            return lastname;
        }
        public void setlastname(String lastname) {
		this.lastname=lastname ;
	}
	public String getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
        }
        
    
}
