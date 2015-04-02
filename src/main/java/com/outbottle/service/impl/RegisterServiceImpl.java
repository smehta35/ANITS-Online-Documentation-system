package com.outbottle.service.impl;

import com.outbottle.dao.RegisterDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.outbottle.dto.Users;
import com.outbottle.service.RegisterService;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	private RegisterDao registerDao;
	
	public boolean register(Users register) {
		Users user = registerDao.getUserDetailsByUserCredentials(register);
                 System.out.println(register.getUserId());//delete later
		if(user != null) {
                 
			if(register.getUserId().equals(user.getUserId()) &&
					register.getPassword().equals(user.getPassword())) {
   				return true;
			}
		}		
		return false;
	}

	
}
