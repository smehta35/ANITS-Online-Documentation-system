package com.outbottle.dao.impl.user;

import org.springframework.jdbc.core.ResultSetExtractor;

import com.outbottle.dto.Users;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;

public class RegisterExtractor implements ResultSetExtractor<Users> {  

	public Users extractData(ResultSet resultSet) throws SQLException, DataAccessException {  

		Users user = new Users();	    
          user.setUserId(resultSet.getString(3));  
		user.setPassword(resultSet.getString(4)); 	 	    
		return user;  
	} 
}

 
