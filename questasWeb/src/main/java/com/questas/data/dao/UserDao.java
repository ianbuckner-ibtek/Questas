package com.questas.data.dao;

import com.questas.data.model.User;

public interface UserDao {
	User findByUserName(String username);
	void setLastLogin(String username, String ip);
}

