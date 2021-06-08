package com.feedback.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.feedback.entity.Admin;
import com.feedback.entity.User;
import com.feedback.mapper.UserMapper;

@Service
public class UserDao implements UserService {

	@Autowired
	private UserMapper usermapper;

	@Transactional(readOnly = true)
	public Admin loginAdmin(String username, String password) {
		return usermapper.loginAdmin(username, password);
	}

	@Override
	public List<User> getUserswithFeedback() {

		return usermapper.getUserswithFeedback();
	}

	@Override
	public Integer saveFeedback(User user) {

		return usermapper.saveFeedback(user);
	}

}

