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
import com.hxt.dao.userMapper;

@Controller
public class adminController {
	@Autowired
	labMapper labMapper;
	userMapper userMapper;
	
	//页面框架
	@RequestMapping(value = "labListP")// 
	public ModelAndView TaskListP(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv .setViewName("lab_infoM/user");
		return mv;
		}
	//个人信息
	@RequestMapping(value = "message")
	public ModelAndView message(HttpServletRequest request, HttpServletResponse response) {// 登录验证
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session=request.getSession();
    	String user_id=(String) session.getAttribute("user_id");
    	User user=labMapper.user_message(user_id);
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("lab_infoM/user_messsage");
		mv.addObject("user",user);
		return mv;
	}
	@RequestMapping(value = "labList")
	public ModelAndView labList(HttpServletRequest request, HttpServletResponse response) {// 登录验证
    	List<Lab> labs=labMapper.labList();
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("lab_infoM/lablist");
		mv.addObject("labs",labs);
		return mv;
	}
	//查询实验室信息
	@RequestMapping(value = "measures")
	public ModelAndView measures(HttpServletRequest request, HttpServletResponse response) {// 登录验证
		Cookie[] cookies=request.getCookies();
		String lab_id=null;
		for(Cookie cookie:cookies) {
			if(cookie.getName().equals("lab_id")) {
				lab_id=cookie.getValue();
			}
		}
		Lab lab=labMapper.labmessage(lab_id);
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("lab_infoM/labmessage");
		mv.addObject("lab",lab);
		return mv;
	}
	
	//修改实验室信息（加入数据库）
	@RequestMapping(value = "updateLab")
	public ModelAndView updateLab(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		Lab p=new Lab();
		p.setLab_id(request.getParameter("lab_id"));
		p.setLab_name(request.getParameter("lab_name"));
		p.setLeader(request.getParameter("leader"));
		p.setRemark(request.getParameter("remark"));
		p.setSite(request.getParameter("site"));
		p.setState(request.getParameter("state"));
		labMapper.updateLab(p);
		return measures(request,response);
	}
	//跳转添加界面
	@RequestMapping(value = "addLab1")
	public ModelAndView addLab1(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
    	mv.setViewName("lab_infoM/addLab");
		mv.addObject("isExist",0);
		return mv;
	}
	//添加实验室信息（加入数据库）
	@RequestMapping(value = "addLab")
	public ModelAndView addLab(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		Lab p=new Lab();
		p.setLab_id(request.getParameter("lab_id"));
		p.setLab_name(request.getParameter("lab_name"));
		p.setLeader(request.getParameter("leader"));
		p.setRemark(request.getParameter("remark"));
		p.setSite(request.getParameter("site"));
		p.setState("停用");
		if(labMapper.isExist(p.getLab_id())==0) {
			labMapper.addLab(p);
			return labList(request,response);
		}else {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("lab_infoM/addLab");
			mv.addObject("isExist",1);
			return mv;
		}
		
		
	}
	
	//停用
	@RequestMapping(value = "stop")
	public ModelAndView stop(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies=request.getCookies();
		String lab_id=null;
		for(Cookie cookie:cookies) {
			if(cookie.getName().equals("lab_id")) {
				lab_id=cookie.getValue();
			}
		}
		labMapper.stopLab(lab_id);
		return labList(request,response);
	}
	//使用
	@RequestMapping(value = "begin")
	public ModelAndView begin(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies=request.getCookies();
		String lab_id=null;
		for(Cookie cookie:cookies) {
			if(cookie.getName().equals("lab_id")) {
				lab_id=cookie.getValue();
			}
		}
		labMapper.beginLab(lab_id);
		return labList(request,response);
	}
	
	//改密
	@RequestMapping(value = "password")
	public ModelAndView password(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies=request.getCookies();
		String password=null;
		String flag=null;
		for(Cookie cookie:cookies) {
			if(cookie.getName().equals("password")) {
				password=cookie.getValue();
			}else if(cookie.getName().equals("flag")) {
				flag=cookie.getValue();
			}
		}
		HttpSession session=request.getSession();
    	String user_id=(String) session.getAttribute("user_id");
    	if(password!=null && !"null".equals(password)) {
    		User user=new User();
    		user.setPassword(password);
    		user.setUser_id(user_id);
    		labMapper.password(user);
    	}
		ModelAndView mv = new ModelAndView();
		switch (flag) {
			case "1":
				mv .setViewName("lab_infoM/user");
				break;
			case "2":
				mv .setViewName("teacher/user");
				break;
			case "3":
				mv .setViewName("student/user");
				break;
		}
		return mv;
//		return TaskListP(request,response);
	}
}



