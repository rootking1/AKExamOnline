package com.qhit.lh.gr3.wjw;

import org.hibernate.Transaction;
import org.junit.Test;

import com.qhit.lh.gr3.wjw.common.bean.Student;
import com.qhit.lh.gr3.wjw.common.bean.User;
import com.qhit.lh.gr3.wjw.common.dao.BaseDao;


/**
 * @author admin
 * 2017年12月27日
 */
public class StudentTest extends BaseDao {

	@Test
	public void add(){
		//新建学生
		Student student = new Student();
		student.setSname("张三");
		student.setSex("男");
		student.setEnterSchool("2016");
		student.setcCode("");
		//分配账户
		User user = new User();
		user.setName("16030221001");
		user.setPwd("123456");
		user.setRole(1);
		
		student.setUser(user);
		
		Transaction ts = getSession().beginTransaction();
		getSession().save(student);
		ts.commit();
	}
}
