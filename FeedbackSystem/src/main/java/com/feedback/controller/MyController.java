package com.feedback.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.feedback.entity.Admin;
import com.feedback.entity.Message;
import com.feedback.entity.User;
import com.feedback.service.UserService;

@Controller
public class MyController {

	@Autowired
	UserService userservice;

	// admin login page
	@RequestMapping("/admin")
	public String adminLoginHandler() {
		return "adminLogin";
	}

	// feedback from
	@RequestMapping("/feedback")
	public String feedbackfromHandler() {
		return "feedbackform";
	}

	@RequestMapping("/submit")
	public ModelAndView adminVerify(@RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session) {

		Admin admin = userservice.loginAdmin(username, password);
		if (admin==null) {
			ModelAndView mav1 = new ModelAndView("adminLogin");
			Message msg=new Message("Invalid Details !try with another","error","alert-danger");
			session.setAttribute("msg",msg);
			return mav1;
		}
		List<User> user = userservice.getUserswithFeedback();
		ModelAndView mav2 = new ModelAndView("welcome");
        mav2.addObject("feedback", user);
        session.setAttribute("currentuser",admin);
		return mav2;
	}

	@RequestMapping("/savefeedback")
	public ModelAndView saveFeedback(@ModelAttribute("user") User user,HttpSession session) {
		userservice.saveFeedback(user);
		ModelAndView mav = new ModelAndView("feedbackform");
		Message msg=new Message("Feedback Saved Successfully! Try another","success","alert-success");
		session.setAttribute("msg",msg);
		return mav;
	}
	
	@RequestMapping("/logout")
	public String logoutHandler(HttpSession session) {
		session.removeAttribute("currentname");
		Message m=new Message("Logout Successfully","success","alert-success");
		session.setAttribute("msg",m);
		return "adminLogin";
	}

}
