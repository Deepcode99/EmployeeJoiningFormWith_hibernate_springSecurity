
package com.adjecti.spring.admin.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.adjecti.spring.admin.entity.Employee;
import com.adjecti.spring.admin.entity.User;

@Repository
@Transactional()
public class UserRepositoryImpl /* implements UserRepository */ {

	@Autowired
	HibernateTemplate hibernateTemplate;

	
	public User findByUserName(String username) {
		return hibernateTemplate.get(User.class, username);
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public User findByUserByEmpCode(String empcode) {
		
		return hibernateTemplate.get(User.class, empcode);
	}

}
