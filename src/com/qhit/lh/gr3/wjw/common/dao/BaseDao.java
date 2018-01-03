package com.qhit.lh.gr3.wjw.common.dao;

import org.hibernate.Session;

import com.qhit.lh.gr3.wjw.common.utils.HibernateSessionFactory;


/**
 * @author admin
 * 2017年12月27日
 */
public class BaseDao {

	public Session getSession(){
		return HibernateSessionFactory.getSession();
	}
}
