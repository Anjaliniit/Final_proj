package com.womenadda.service;

import com.womenadda.model.UserRegister;

public interface UserService {

	void addUser(UserRegister u);
	UserRegister getUserById(int userId);	
}
