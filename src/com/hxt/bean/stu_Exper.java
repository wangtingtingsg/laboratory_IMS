package com.hxt.bean;

public class stu_Exper {//
	private String student_id;
	private String user_name;
	private String experiment_id;
	private String score;
	private String explan;
	
	public stu_Exper(String student_id, String experiment_id, String score, String explan) {
		super();
		this.student_id = student_id;
		this.experiment_id = experiment_id;
		this.score = score;
		this.explan = explan;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public stu_Exper() {
	}

	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getExperiment_id() {
		return experiment_id;
	}

	public void setExperiment_id(String experiment_id) {
		this.experiment_id = experiment_id;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getExplan() {
		return explan;
	}

	public void setExplan(String explan) {
		this.explan = explan;
	}

	
}
