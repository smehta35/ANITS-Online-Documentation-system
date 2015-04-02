package com.outbottle.dao.impl.user;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.outbottle.dto.User;

public class UserExtractor implements ResultSetExtractor<User> {  

	public User extractData(ResultSet resultSet) throws SQLException, DataAccessException {  

		User user = new User();	    
		user.setUserId(resultSet.getString(3));  
		user.setPassword(resultSet.getString(4)); 	    
		return user;  
	}  

}  
