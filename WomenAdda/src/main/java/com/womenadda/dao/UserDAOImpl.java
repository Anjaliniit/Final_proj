package com.womenadda.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.womenadda.model.Product;
import com.womenadda.model.UserRegister;

@Repository
public class UserDAOImpl implements UserDAO {

	private SessionFactory sessionFactory;
    public void setSessionFactory(SessionFactory sf)
    {
    	this.sessionFactory=sf; 	
    }
	
	
	public void addUser(UserRegister u) {
		Session session=this.sessionFactory.getCurrentSession();
		session.persist(u);
		System.out.println("user register successfully="+u);
	

	}

	public UserRegister getUserById(int userId) {
		
		Session session=this.sessionFactory.getCurrentSession();
		UserRegister u=(UserRegister) session.load(UserRegister.class,new Integer(userId));
		System.out.println("data of user by id="+u);
		return u;	}

}
