package com.hxt.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import com.hxt.bean.*;
import com.hxt.dao.*;

@Controller
public class userMController {
	@Autowired
	userMapper userMapper;
	
	//页面框架
	@RequestMapping(value = "userListP")// 
	public ModelAndView userListP(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv .setViewName("user_infoM/user");
		return mv;
		}
	
	@RequestMapping(value = "userList")
	public ModelAndView userList(HttpServletRequest request, HttpServletResponse response) {// 登录验证
    	List<User> users1=userMapper.userList("教师");
    	List<User> users2=userMapper.userList("学生");
    	users2.addAll(users1);
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("user_infoM/userlist");
		mv.addObject("labs",users2);
		return mv;
	}
	//查询实验室信息
	@RequestMapping(value = "user_message")
	public ModelAndView user_message(HttpServletRequest request, HttpServletResponse response) {// 登录验证
		Cookie[] cookies=request.getCookies();
		String user_id=null;
		for(Cookie cookie:cookies) {
			if(cookie.getName().equals("user_id")) {
				user_id=cookie.getValue();
			}
		}
		User lab=userMapper.usermessage(user_id);
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("user_infoM/usermessage");
		mv.addObject("lab",lab);
		return mv;
	}
	
	//修改实验室信息（加入数据库）
	@RequestMapping(value = "updateUser")
	public ModelAndView updateUser(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		User p=new User();
		p.setContact(request.getParameter("contact"));
		p.setGrade(request.getParameter("grade"));
		p.setRole(request.getParameter("role"));
		p.setSchool(request.getParameter("school"));
		p.setUclass(request.getParameter("uclass"));
		p.setUser_id(request.getParameter("user_id"));
		p.setUser_name(request.getParameter("user_name"));
		userMapper.updateUser(p);
		return user_message(request,response);
	}
	//跳转添加界面
	@RequestMapping(value = "addUser1")
	public ModelAndView addLab1(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
    	mv.setViewName("user_infoM/addUser");
		mv.addObject("isExist",0);
		return mv;
	}
	//添加用户
	@RequestMapping(value = "addUser")
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		User p=new User();
		p.setContact(request.getParameter("contact"));
		p.setGrade(request.getParameter("grade"));
		p.setRole(request.getParameter("role"));
		p.setSchool(request.getParameter("school"));
		p.setUclass(request.getParameter("uclass"));
		p.setUser_id(request.getParameter("user_id"));
		p.setUser_name(request.getParameter("user_name"));
		if(userMapper.isExist(p.getUser_id())==0) {
			userMapper.addUser(p);
			return userList(request,response);
		}else {
			ModelAndView mv = new ModelAndView();
	    	mv.setViewName("user_infoM/addUser");
			mv.addObject("isExist",1);
			return mv;
		}
	}
	
	//密码初始化
	@RequestMapping(value = "initialize")
	public ModelAndView initialize(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies=request.getCookies();
		String user_id=null;
		for(Cookie cookie:cookies) {
			if(cookie.getName().equals("user_id")) {
				user_id=cookie.getValue();
			}
		}
		userMapper.initialize(user_id);
		return userList(request,response);
	}
}



