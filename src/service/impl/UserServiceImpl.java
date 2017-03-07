package service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.User;
import dao.UserDAO;
import service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	//spring自动注入
	@Resource(name="HibernateUserDao")
//	@Resource(name="JDBCUserDao")
	private UserDAO userDao; 
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public boolean update(User user) {
		return false;
	}
	
	@Override
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public boolean findUser(User user) {
		User u = userDao.findByEmail(user.getEmail());
		if(u!=null){
			if(u.getPassword().equals(user.getPassword()))
				return true;
		}
		return false;
	}

	public UserDAO getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}
	
}
