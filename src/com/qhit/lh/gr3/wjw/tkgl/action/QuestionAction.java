package com.qhit.lh.gr3.wjw.tkgl.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.qhit.lh.gr3.wjw.common.bean.PageBean;
import com.qhit.lh.gr3.wjw.kmgl.bean.Course;
import com.qhit.lh.gr3.wjw.tkgl.bean.WrittenQuestion;
import com.qhit.lh.gr3.wjw.tkgl.service.QuestionService;
import com.qhit.lh.gr3.wjw.tkgl.service.QuestionServiceImpl;

public class QuestionAction extends ActionSupport {
	private QuestionService questionService = new QuestionServiceImpl();
	private Course course;
	private String major;//专业方向
	private String stage;//阶段
	private List<Course> listCourses = new ArrayList<>();
	private PageBean<WrittenQuestion> pageBean = new PageBean<>();
	
	/**
	 * @return
	 * 题库列表
	 */
	public String getCourseInfo(){
		//设置参数
		Map<String, String> parameter = new HashMap<>();
		if(major != null && !"".equals(major)){
			parameter.put("major", major);
		}
		if(stage != null && !"".equals(stage)){
			parameter.put("stage", stage);
		}
		//查询题库列表数据
		listCourses = questionService.getCourseInfo(parameter);
		System.out.println(listCourses.size());
		return "listCourse";
	}
	
	public PageBean<WrittenQuestion> getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean<WrittenQuestion> pageBean) {
		this.pageBean = pageBean;
	}

	/**
	 * @return
	 * 获取试题列表
	 */
	public String getWrittenList(){
		pageBean = questionService.getWrittenList(pageBean, course);
		return "listWritten";
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getStage() {
		return stage;
	}

	public void setStage(String stage) {
		this.stage = stage;
	}



	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public List<Course> getListCourses() {
		return listCourses;
	}

	public void setListCourses(List<Course> listCourses) {
		this.listCourses = listCourses;
	}
}
