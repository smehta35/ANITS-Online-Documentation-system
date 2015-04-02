package com.outbottle.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.outbottle.dao.LoginDao;
import com.outbottle.dao.impl.DemoMD5;
import com.outbottle.dto.User;
import com.outbottle.service.LoginService;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
@Transactional
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;
	
	public boolean login(User login) {
		User user = loginDao.getUserDetailsByUserCredentials(login);
                 System.out.println(login.getUserId());//delete later
		if(user != null) {
                    try {
                        if(login.getUserId().equals(user.getUserId()) &&
                                DemoMD5.MD5(login.getPassword()).equals(user.getPassword())) {
                            return true;
                        }
                    } catch (NoSuchAlgorithmException ex) {
                        Logger.getLogger(LoginServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (UnsupportedEncodingException ex) {
                        Logger.getLogger(LoginServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
                    }
		}		
		return false;
	}

	
}
