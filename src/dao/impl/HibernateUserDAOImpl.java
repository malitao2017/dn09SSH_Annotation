/*
 * HibernateUserDAOImpl.java
 * Copyright: TsingSoft (c) 2015
 * Company: 北京清软创新科技有限公司
 */
package dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import pojo.User;
import dao.UserDAO;

/**
 * hibernate 的实现
 *  
 * 创建日期：2015年12月11日 下午2:34:00 
 * @author malitao
 */
/** 
 *  
 * 创建日期：2015年12月11日 下午3:00:16 
 * @author malitao
 */
@Repository("HibernateUserDao")
public class HibernateUserDAOImpl extends HibernateDaoSupport implements UserDAO{
	
	/**
	 * sessionFactory需要写程序 注入
	 */
	@Resource(name="mySessionFactory")
	public void setMysf(SessionFactory mysf){
		super.setSessionFactory(mysf);
	}
	
	/**
	 * //根据email查询对象
	 */
	@SuppressWarnings("unchecked")
	@Override 
	public User findByEmail(String email) {
		System.out.println("hibernate形式");
		String hql = "from User where email = ?";
		List<User> list = this.getHibernateTemplate().find(hql, new Object[] { email });
		// 根据email查询对象
		if (list != null) {
			return list.get(0);
		}
		return null;
	}
}

