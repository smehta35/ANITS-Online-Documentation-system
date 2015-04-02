package com.outbottle.dao.impl.user;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.outbottle.dto.User;

public class UserRowMapper implements RowMapper<User> {

	public User mapRow(ResultSet resultSet, int line) throws SQLException {  
		UserExtractor userExtractor = new UserExtractor();  
		return userExtractor.extractData(resultSet);  
	}  

}  
