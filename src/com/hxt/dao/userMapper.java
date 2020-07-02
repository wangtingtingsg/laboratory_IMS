package com.hxt.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hxt.bean.*;

public interface userMapper {
	User user_message(String user_id);
	List<User> userList(String s);
	User usermessage(String user_id);
	void updateUser(User p);
	void addUser(User user);
	void initialize(String user_id);
	int isExist(String user_id);
}
