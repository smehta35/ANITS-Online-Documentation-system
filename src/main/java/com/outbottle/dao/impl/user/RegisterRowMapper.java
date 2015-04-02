package com.outbottle.dao.impl.user;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.outbottle.dto.Users;

public class RegisterRowMapper implements RowMapper<Users> {

	public Users mapRow(ResultSet resultSet, int line) throws SQLException {  
		RegisterExtractor registerExtractor = new RegisterExtractor();  
		return registerExtractor.extractData(resultSet);  
	}  

}  
