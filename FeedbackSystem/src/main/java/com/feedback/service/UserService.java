package com.feedback.service;

import java.util.List;

import com.feedback.entity.Admin;
import com.feedback.entity.User;

public interface UserService {

	Admin loginAdmin(String username, String password);

	List<User> getUserswithFeedback();

	Integer saveFeedback(User user);

}
