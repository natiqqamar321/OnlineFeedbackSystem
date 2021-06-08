package com.feedback.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.feedback.entity.Admin;
import com.feedback.entity.User;

@Mapper
public interface UserMapper {
    
	//admin authentication
	@Select("select * from admin where username=#{username} and password=#{password}")
	Admin loginAdmin(String username,String password);
	
	
	//fetch All feedbacks
	@Select("select * from t_user")
	List<User> getUserswithFeedback();
	
	//insert feedback into database
	@Insert("insert into t_user(experiance,name, email,age,phone,msg) values(#{experiance},#{name},#{email},#{age},#{phone},#{msg})")
	Integer saveFeedback(User user);

}
