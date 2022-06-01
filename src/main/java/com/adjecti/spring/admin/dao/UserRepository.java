package com.adjecti.spring.admin.dao;

import com.adjecti.spring.admin.entity.User;

public interface UserRepository {
 
	public  User findByUserByEmpCode(String empcode);
}
