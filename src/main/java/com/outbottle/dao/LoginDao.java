package com.outbottle.dao;

import com.outbottle.dto.User;


public interface LoginDao {
  //  void create(String firstName, String lastName,String userName, String password);
	public User getUserDetailsByUserCredentials(User user);
}
