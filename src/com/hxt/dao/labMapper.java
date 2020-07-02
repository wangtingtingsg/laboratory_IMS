package com.hxt.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hxt.bean.*;

public interface labMapper {
	User login(String user_id);
	User user_message(String user_id);
	List<Lab> labList();
	Lab labmessage(String lab_id);
	void updateLab(Lab lab);
	void addLab(Lab lab);
	void stopLab(String lab_id);
	void beginLab(String lab_id);
	
	
	List<Experiment> experimentList(String lab_id);
	void addexper(Experiment experiment);
	
	List<Experiment> MexperimentList(String teacher);
	List<stu_Exper> stu_appointList(String experiment_id);
	String name(String user_id);
	void updatestu(stu_Exper stu_Exper);
	
	
	List<stu_Exper> Mstu_appointList(String student_id);
	List<Experiment> allexperimentList();
	void addstu_app(stu_Exper stu_Exper);
	
	void password(User user);
	int isExist(String lab_id);
	int isExistE(String Experiment_id);
}
