package com.outbottle.dao;

import com.outbottle.dto.Users;


public interface RegisterDao {
  //  void create(String firstName, String lastName,String userName, String password);
	public Users getUserDetailsByUserCredentials(Users user);
}
