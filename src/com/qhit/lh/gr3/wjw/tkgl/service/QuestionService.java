package com.qhit.lh.gr3.wjw.tkgl.service;

import java.util.List;
import java.util.Map;

import com.qhit.lh.gr3.wjw.common.bean.PageBean;
import com.qhit.lh.gr3.wjw.kmgl.bean.Course;
import com.qhit.lh.gr3.wjw.tkgl.bean.WrittenQuestion;

public interface QuestionService {

	/**
	 * 题库管理
	 * @param mjId
	 * @param stage
	 * @return
	 * 题库列表
	 */
	public List<Course> getCourseInfo(Map parameter);
	
	/**
	 * @param pageBean
	 * @return
	 * 笔试题列表分页数据
	 */
	public PageBean<WrittenQuestion> getWrittenList(PageBean<WrittenQuestion> pageBean, Course course);
}
