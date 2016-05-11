package com.womenadda.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.womenadda.dao.ProductDAO;
import com.womenadda.dao.UserDAO;
import com.womenadda.model.UserRegister;


@Service
public class UserServiceImpl implements UserService {

	private UserDAO userDAO;
	@Transactional
	public void setUserDAO(UserDAO userDAO)
	{
		this.userDAO=userDAO;		
	}
	
	@Transactional
	public void addUser(UserRegister u) {
	userDAO.addUser(u);	
	}

	public UserRegister getUserById(int userId) {
		
		return this.userDAO.getUserById(userId);
	}

}
