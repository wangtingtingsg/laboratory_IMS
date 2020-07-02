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
public class studentController {
	@Autowired
	labMapper labMapper;
	userMapper userMapper;
	
	//页面框架
		@RequestMapping(value = "slabListP")// 
		public ModelAndView elabListP(HttpServletRequest request, HttpServletResponse response) {
			ModelAndView mv = new ModelAndView();
			mv .setViewName("student/user");
			return mv;
			}
		
		//实验列表
		@RequestMapping(value = "selabList")
		public ModelAndView selabList(HttpServletRequest request, HttpServletResponse response) {// 登录验证
			HttpSession session=request.getSession();
	    	String student=(String) session.getAttribute("user_id");
			List<Experiment> labs=labMapper.allexperimentList();
			List<stu_Exper> stu=labMapper.Mstu_appointList(student);
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("student/lablist");
			mv.addObject("labs",labs);
			mv.addObject("stu",stu);
			return mv;
		}
		//添加实验（加入数据库）
		@RequestMapping(value = "sorder")
		public ModelAndView addexper(HttpServletRequest request, HttpServletResponse response) {
			Cookie[] cookies=request.getCookies();
			String experiment_id=null;
			for(Cookie cookie:cookies) {
				if(cookie.getName().equals("experiment_id")) {
					experiment_id=cookie.getValue();
				}
			}
			HttpSession session=request.getSession();
	    	String student=(String) session.getAttribute("user_id");
	    	stu_Exper se=new stu_Exper();
	    	se.setStudent_id(student);
	    	se.setExperiment_id(experiment_id);
			labMapper.addstu_app(se);
			return selabList(request,response);
		}
		//个人信息
		@RequestMapping(value = "smessage")
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
	    	mv.setViewName("student/user_messsage");
			mv.addObject("user",user);
			return mv;
		}
		
}



