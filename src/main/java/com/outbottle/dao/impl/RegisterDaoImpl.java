package com.outbottle.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.outbottle.dao.RegisterDao;
import com.outbottle.dao.impl.user.RegisterRowMapper;
import com.outbottle.dto.Users;
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
public class RegisterDaoImpl implements RegisterDao {

	@Autowired  
	private DataSource dataSource;  

	public Users getUserDetailsByUserCredentials(Users user) {
            //String emailid = user.getUserId();
            String pwd = null;
            try {
                pwd = DemoMD5.MD5(user.getPassword());
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(RegisterDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            } catch (UnsupportedEncodingException ex) {
                Logger.getLogger(RegisterDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
		String sql = "insert into user_info(first_name,last_name,email_id,password) values(?,?,?,?)";  
                 Object[] params = new Object[] {user.getfirstname(),user.getlastname(),user.getUserId(),pwd};
		JdbcTemplate insert= new JdbcTemplate(dataSource);
                insert.update(sql,params);
                JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource); 
                String sqls = "select * from user_info where email_id='"+user.getUserId()+"' and password='"+user.getPassword()+"'"; 
                
                List<Users> userList = new ArrayList<Users>();  
		userList =jdbcTemplate.query(sqls, new RegisterRowMapper());
		if(userList.size() > 0) {
			return userList.get(0);
		}
		else {
			return null;
		}
	}
}
