package com.hxt.bean;

public class Experiment {//实验
	private String experiment_id;
	private String experiment_name;
	private String lab_id;
	private String date;
	private String teacher;
	private String exact_date;
	
	public Experiment() {
	}

	public Experiment(String experiment_id, String experiment_name, String lab_id, String date, String teacher,
			String exact_date) {
		super();
		this.experiment_id = experiment_id;
		this.experiment_name = experiment_name;
		this.lab_id = lab_id;
		this.date = date;
		this.teacher = teacher;
		this.exact_date = exact_date;
	}

	public String getExperiment_id() {
		return experiment_id;
	}

	public void setExperiment_id(String experiment_id) {
		this.experiment_id = experiment_id;
	}

	public String getExperiment_name() {
		return experiment_name;
	}

	public void setExperiment_name(String experiment_name) {
		this.experiment_name = experiment_name;
	}

	public String getLab_id() {
		return lab_id;
	}

	public void setLab_id(String lab_id) {
		this.lab_id = lab_id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public String getExact_date() {
		return exact_date;
	}

	public void setExact_date(String exact_date) {
		this.exact_date = exact_date;
	}
	
	
	
}
