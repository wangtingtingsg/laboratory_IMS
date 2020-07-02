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
public class teacherController {
	@Autowired
	labMapper labMapper;
	userMapper userMapper;
	
	//页面框架
		@RequestMapping(value = "elabListP")// 
		public ModelAndView elabListP(HttpServletRequest request, HttpServletResponse response) {
			ModelAndView mv = new ModelAndView();
			mv .setViewName("teacher/user");
			return mv;
			}
		
	//页面框架
		@RequestMapping(value = "experimentListP")// 
		public ModelAndView experimentListP(HttpServletRequest request, HttpServletResponse response) {
			ModelAndView mv = new ModelAndView();
			mv .setViewName("teacher/experimentListP");
			return mv;
			}
	//实验室列表
		@RequestMapping(value = "elabList")
		public ModelAndView elabList(HttpServletRequest request, HttpServletResponse response) {// 登录验证
			List<Lab> labs=labMapper.labList();
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("teacher/lablist");
			mv.addObject("labs",labs);
			return mv;
		}
		//实验列表
		@RequestMapping(value = "experlist")
		public ModelAndView experlist(HttpServletRequest request, HttpServletResponse response) {
			Cookie[] cookies=request.getCookies();
			String lab_id=null;
			for(Cookie cookie:cookies) {
				if(cookie.getName().equals("lab_id")) {
					lab_id=cookie.getValue();
				}
			}
			List<Experiment> labs=labMapper.experimentList(lab_id);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("teacher/experlist");
			mv.addObject("exps",labs);
			return mv;
			}
		//预约跳转
		@RequestMapping(value = "order1")
		public ModelAndView order1(HttpServletRequest request, HttpServletResponse response) {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("teacher/order");
			mv.addObject("isExist",0);
			return mv;
			}
		//添加实验（加入数据库）
		@RequestMapping(value = "addexper")
		public ModelAndView addexper(HttpServletRequest request, HttpServletResponse response) {
			try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
			Cookie[] cookies=request.getCookies();
			String lab_id=null;
			for(Cookie cookie:cookies) {
				if(cookie.getName().equals("lab_id")) {
					lab_id=cookie.getValue();
				}
			}
			HttpSession session=request.getSession();
	    	String teacher=(String) session.getAttribute("user_id");
			Experiment p=new Experiment();
			p.setDate(request.getParameter("date"));
			p.setExact_date(request.getParameter("exact_date"));
			p.setExperiment_id(request.getParameter("experiment_id"));
			p.setExperiment_name(request.getParameter("experiment_name"));
			p.setLab_id(lab_id);
			p.setTeacher(teacher);
			if(labMapper.isExistE(p.getExperiment_id())==0) {
				labMapper.addexper(p);
				return experlist(request,response);
			}else {
				ModelAndView mv = new ModelAndView();
				mv.setViewName("teacher/order");
				mv.addObject("isExist",1);
				return mv;
			}
		}
		//个人信息
		@RequestMapping(value = "tmessage")
		public ModelAndView tmessage(HttpServletRequest request, HttpServletResponse response) {// 登录验证
			try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			HttpSession session=request.getSession();
	    	String user_id=(String) session.getAttribute("user_id");
	    	User user=labMapper.user_message(user_id);
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("teacher/user_messsage");
			mv.addObject("user",user);
			return mv;
		}
		
		//my实验列表
		@RequestMapping(value = "MexperList")
		public ModelAndView MexperList(HttpServletRequest request, HttpServletResponse response) {
			HttpSession session=request.getSession();
	    	String teacher=(String) session.getAttribute("user_id");
			List<Experiment> labs=labMapper.MexperimentList(teacher);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("teacher/Mexperlist");
			mv.addObject("exps",labs);
			return mv;
			}
		
		//某实验学生列表
		@RequestMapping(value = "stu_appointList")
		public ModelAndView stu_appointList(HttpServletRequest request, HttpServletResponse response) {// 登录验证
			Cookie[] cookies=request.getCookies();
			String experiment_id=null;
			for(Cookie cookie:cookies) {
				if(cookie.getName().equals("experiment_id")) {
					experiment_id=cookie.getValue();
				}
			}
			List<stu_Exper> labs=labMapper.stu_appointList(experiment_id);
			for(stu_Exper s:labs) {
				s.setUser_name(labMapper.name(s.getStudent_id()));
			}
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("teacher/stu_appointmentList");
			mv.addObject("labs",labs);
			return mv;
		}
		
		//评分
		@RequestMapping(value = "stu_score")
		public ModelAndView stu_score(HttpServletRequest request, HttpServletResponse response) {
			try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
			Cookie[] cookies=request.getCookies();
			String experiment_id=null;
			for(Cookie cookie:cookies) {
				if(cookie.getName().equals("experiment_id")) {
					experiment_id=cookie.getValue();
				}
			}
			List<stu_Exper> labs=labMapper.stu_appointList(experiment_id);
			for(stu_Exper s:labs) {
				s.setScore(request.getParameter(s.getStudent_id()+"score"));
				s.setExplan(request.getParameter(s.getStudent_id()+"explan"));
				labMapper.updatestu(s);
			}
			return stu_appointList(request,response);
		}
}



