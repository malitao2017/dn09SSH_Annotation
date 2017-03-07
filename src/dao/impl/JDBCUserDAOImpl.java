/*
 * JDBCUserDAOImpl.java
 * Copyright: TsingSoft (c) 2015
 * Company: 北京清软创新科技有限公司
 */
package dao.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;

import pojo.User;
import pojo.UserRowMapper;
import dao.UserDAO;

/**
 * jdbc实现的数据库访问
 * 这里的dataSource是 javax.sql.DataSource
 * @author LT
 * @version 1.0, 2015年10月20日
 */
@Service("JDBCUserDao")
public class JDBCUserDAOImpl extends JdbcDaoSupport implements UserDAO{
	
	/**
	 * 需写程序注入 
	 */
	@Resource(name="myDataSource")
	public void setds(DataSource da){
		super.setDataSource(da);
	}
	/**
	 * 查找对象
	 */
	@Override
	public User findByEmail(String email) {
		System.out.println("jdbc形式");
		String sql = "select * from d_user where email = ?";
		List<User> list = this.getJdbcTemplate().
				query(sql, new Object[]{email}, new UserRowMapper());
		if(null!=list)
			return list.get(0);
		return null;
	}
	
}
