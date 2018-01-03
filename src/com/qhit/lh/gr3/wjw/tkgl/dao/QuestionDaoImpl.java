package com.qhit.lh.gr3.wjw.tkgl.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;

import com.qhit.lh.gr3.wjw.common.bean.PageBean;
import com.qhit.lh.gr3.wjw.common.dao.BaseDao;
import com.qhit.lh.gr3.wjw.kmgl.bean.Course;
import com.qhit.lh.gr3.wjw.tkgl.bean.WrittenQuestion;

public class QuestionDaoImpl extends BaseDao implements QuestionDao {

	@Override
	public List<Course> getCourseInfo(Map parameter) {
		StringBuffer hql = new StringBuffer();
		hql.append("select course from Course course where 1 = 1");
		//拼接HQL
		if(parameter.get("major") != null && !"".equals(parameter.get("major"))){
			hql.append(" and course.major = :major");
		}
		if(parameter.get("stage") != null && !"".equals(parameter.get("stage"))){
			hql.append(" and course.stage = :stage");
		}
		//获取查询器
		Query query = getSession().createQuery(hql.toString());
		//设置参数
		if(parameter.get("major") != null && !"".equals(parameter.get("major"))){
			query.setString("major", (String) parameter.get("major"));
		}
		if(parameter.get("stage") != null && !"".equals(parameter.get("stage"))){
			query.setString("stage", (String) parameter.get("stage"));
		}
		//执行查询
		return query.list();
	}

	@Override
	public PageBean<WrittenQuestion> getWrittenList(PageBean<WrittenQuestion> pageBean, Course course) {
		// TODO Auto-generated method stub
		//hql语句
		StringBuffer hql = new StringBuffer();
		hql.append("select w from WrittenQuestion w where w.csId = :csId");
		//获取查询器
		Query query = getSession().createQuery(hql.toString());
		//设置分页查询参数
		query.setInteger("csId", course.getCsId());
		//总记录数
		int count = query.list().size();
		pageBean.setTotalNumber(count);
		//当前页数据
		List<WrittenQuestion> items = query.setFirstResult((pageBean.getCurrentIndex()-1)*pageBean.getPageSize())
				.setMaxResults(pageBean.getPageSize())
				.list();
		
		pageBean.setItems(items);
		
		return pageBean;
	}

}
