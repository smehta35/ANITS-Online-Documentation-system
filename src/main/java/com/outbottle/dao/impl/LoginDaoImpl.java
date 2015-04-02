package com.outbottle.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.outbottle.dao.LoginDao;
import com.outbottle.dao.impl.user.UserRowMapper;
import com.outbottle.dto.User;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell
 */
@Repository
@Transactional
public class LoginDaoImpl implements LoginDao {

	@Autowired  
	private DataSource dataSource;  

	public User getUserDetailsByUserCredentials(User user) {
		List<User> userList = new ArrayList<User>();
                 String pwd = null;
            try {
                 pwd = DemoMD5.MD5(user.getPassword());
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(LoginDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            } catch (UnsupportedEncodingException ex) {
                Logger.getLogger(LoginDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
		String sql = "select * from user_info where email_id='"+user.getUserId()+"' and password='"+pwd+"'";  
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
		userList = jdbcTemplate.query(sql, new UserRowMapper());
		if(userList.size() > 0) {
			return userList.get(0);
		}
		else {
			return null;
		}
	}
}