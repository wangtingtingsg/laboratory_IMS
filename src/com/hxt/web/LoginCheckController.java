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
import com.hxt.dao.labMapper;

@Controller
public class LoginCheckController {
	@Autowired
	labMapper labMapper;
	
	@RequestMapping(value = "login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {// 登录验证
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		//String actor=null;
		User user = labMapper.login(name);
		ModelAndView mv = new ModelAndView();
		if(user.getPassword().equals(pwd)) {
			HttpSession session=request.getSession();
	    	session.setAttribute("actor", user.getRole());
	    	session.setAttribute("user_id", name);
	    	if("管理员".equals(user.getRole())) {
	    		mv.setViewName("lab_infoM/user");
				mv.addObject("user_id",name);
			}else if("教师".equals(user.getRole())) {
				mv.setViewName("teacher/user");
				mv.addObject("user_id",name);
			}else if("学生".equals(user.getRole())) {
				mv.setViewName("student/user");
				mv.addObject("user_id",name);
			}
			
		}else {
			mv.setViewName("fail");
		}
		return mv;
	}
}



