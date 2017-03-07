package service;

import pojo.User;


public interface UserService {

	public boolean findUser(User user);
	
	public boolean update(User user);
}
