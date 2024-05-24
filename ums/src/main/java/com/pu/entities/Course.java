package com.pu.entities;

public class Course {
	private int courseId;
	private String courseName;
	private int facultyId;
	private int deptId;
	
	public Course() {
		super();
	}

	public Course(int courseId, String courseName, int facultyId, int deptId) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.facultyId = facultyId;
		this.deptId = deptId;
	}

	public int getCourseId() {
		return this.courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public int getFacultyId() {
		return facultyId;
	}

	public void setFacultyId(int facultyId) {
		this.facultyId = facultyId;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
}