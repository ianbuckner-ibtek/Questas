package com.questas.data.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.questas.data.model.User;

public class UserDaoImpl implements UserDao {
	 
	private SessionFactory sessionFactory;
 
	@SuppressWarnings("unchecked")
	@Transactional
	public User findByUserName(String username) {
		List<User> users = new ArrayList<User>();
 
		users = getSessionFactory().getCurrentSession()
			.createQuery("from User where username= :username")
			.setString("username", username).list();
 
		if (users.size() > 0) {
			return users.get(0);
		} 
		return null;	
	}
 
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
 
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	@Transactional
	public void setLastLogin(String username, String ip) {
		String hql = "update User set lastlocation = :location, lastaccess = current_timestamp() where username = :username";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		query.setString("location", ip);
		query.setString("username", username);

		int rowCount = query.executeUpdate();
	}
 
}