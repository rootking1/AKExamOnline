package com.qhit.lh.gr3.wjw;

import org.junit.Test;

import com.qhit.lh.gr3.wjw.common.bean.PageBean;
import com.qhit.lh.gr3.wjw.kmgl.bean.Course;
import com.qhit.lh.gr3.wjw.tkgl.bean.WrittenQuestion;
import com.qhit.lh.gr3.wjw.tkgl.service.QuestionService;
import com.qhit.lh.gr3.wjw.tkgl.service.QuestionServiceImpl;

public class WrittenQuestionTest {
	private QuestionService questionService = new QuestionServiceImpl();

	@Test
	public void pageBeanTest(){
		PageBean<WrittenQuestion> pageBean = new PageBean<>();
		Course course = new Course();
		course.setCsId(1);
		
		pageBean = questionService.getWrittenList(pageBean, course);
		
		System.out.println(pageBean.getItems().get(0).getQtitle());;
	}
}
