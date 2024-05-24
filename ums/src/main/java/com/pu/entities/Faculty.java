package com.pu.entities;

public class Faculty {
	private int facultyId;
	private String facultyName;
	private int deptId;
	
	public Faculty() {
		super();
	}

	public Faculty(int facultyId, String facultyName, int deptId) {
		super();
		this.facultyId = facultyId;
		this.facultyName = facultyName;
		this.deptId = deptId;
	}
	
	public int getFacultyId() {
		return facultyId;
	}
	public void setFacultyId(int facultyId) {
		this.facultyId = facultyId;
	}
	public String getFacultyName() {
		return facultyName;
	}
	public void setFacultyName(String facultyName) {
		this.facultyName = facultyName;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	
}
