package com.adjecti.spring.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.adjecti.spring.admin.dao.EmployeRegisterDao;
import com.adjecti.spring.admin.entity.Employee;
import com.adjecti.spring.admin.service.EmployeeRegistrationService;
import com.adjecti.spring.employee.dao.PersonalDetailsDao;
import com.adjecti.spring.employee.entity.PersonalDetails;

@Service
public class PersonalDetailsServiceImpl implements PersonalDetailsService,EmployeeRegistrationService{

	@Autowired
    private  PersonalDetailsDao personalDetailsDao;
	
	@Autowired
    EmployeRegisterDao employeeDao;
 
	
	public void addPersonalDetailsService(PersonalDetails pDetails) {
		
		personalDetailsDao.addPersonalDetails(pDetails);
	}

	/**
	 * @return the personalDetailsDao
	 */
	public PersonalDetailsDao getPersonalDetailsDao() {
		return personalDetailsDao;
	}

	/**
	 * @param personalDetailsDao the personalDetailsDao to set
	 */
	public void setPersonalDetailsDao(PersonalDetailsDao personalDetailsDao) {
		this.personalDetailsDao = personalDetailsDao;
	}

	public void addDetailsService(Employee employee) {
		employeeDao.addDetails(employee);
	}

	public List<Employee> getEmployeeService() {
		// TODO Auto-generated method stub
		return null;
	}

	public Employee getEmployeeByCodeService(String employeeCode) {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteEmployeeService(String employeeCode) {
		// TODO Auto-generated method stub
		
	}

	public void updateService(Employee employee) throws DataAccessException {
		// TODO Auto-generated method stub
		
	}

	

	
	
}
