package com.hxt.bean;

public class Lab {//实验室
	private String lab_id;
	private String lab_name;
	private String site;//地点
	private String leader;//负责人
	private String remark;//备注
	private String state;//状态
	
	public Lab() {
	}

	public Lab(String lab_id, String lab_name, String site, String leader, String remark, String state) {
		super();
		this.lab_id = lab_id;
		this.lab_name = lab_name;
		this.site = site;
		this.leader = leader;
		this.remark = remark;
		this.state = state;
		
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getLab_id() {
		return lab_id;
	}

	public void setLab_id(String lab_id) {
		this.lab_id = lab_id;
	}

	public String getLab_name() {
		return lab_name;
	}

	public void setLab_name(String lab_name) {
		this.lab_name = lab_name;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
