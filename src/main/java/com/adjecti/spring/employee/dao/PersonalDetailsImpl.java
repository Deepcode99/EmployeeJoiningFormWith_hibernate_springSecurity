package com.adjecti.spring.employee.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.adjecti.spring.admin.dao.EmployeRegisterDao;
import com.adjecti.spring.admin.entity.Employee;
import com.adjecti.spring.employee.entity.PersonalDetails;

@Repository
@Transactional
public class PersonalDetailsImpl implements PersonalDetailsDao,EmployeRegisterDao{

	@Autowired
	HibernateTemplate hibernateTemplate;

	public void addPersonalDetails(PersonalDetails pDetails) {

		hibernateTemplate.save(pDetails);

	}

	
	
	/**
	 * @return the hibernateTemplate
	 */
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	/**
	 * @param hibernateTemplate the hibernateTemplate to set
	 */
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}



	public void addDetails(Employee employee) {
		hibernateTemplate.save(employee);		
	}



	public List<Employee> getEmployee() {
		// TODO Auto-generated method stub
		return null;
	}



	public Employee getEmployeeByCode(String employeeCode) {
		// TODO Auto-generated method stub
		return null;
	}



	public void deleteEmployee(String employeeCode) {
		// TODO Auto-generated method stub
		
	}



	public void update(Employee employee) throws DataAccessException {
		// TODO Auto-generated method stub
		
	}

	
	
	
}
