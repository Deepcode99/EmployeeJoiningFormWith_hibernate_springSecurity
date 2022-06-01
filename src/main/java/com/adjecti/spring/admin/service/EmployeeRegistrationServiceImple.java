package com.adjecti.spring.admin.service;

import java.util.List;

import javax.transaction.Transactional;

import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.adjecti.spring.admin.dao.EmployeRegisterDao;
import com.adjecti.spring.admin.entity.Employee;

@Service
public class EmployeeRegistrationServiceImple implements EmployeeRegistrationService {

	@Autowired
	 private EmployeRegisterDao employeeDao;
	
	
	public void addDetailsService(Employee employee) {
		
		
		employeeDao.addDetails(employee);
	}


	public List<Employee> getEmployeeService() {

		List<Employee> employeelist = employeeDao.getEmployee();
		
		return employeelist;
	}


	public Employee getEmployeeByCodeService(String employeeCode) {
		 Employee employee  = employeeDao.getEmployeeByCode(employeeCode);
		return employee;
	}


	public void deleteEmployeeService(String employeeCode) {
		
		employeeDao.deleteEmployee(employeeCode);
		
	}

  
	/**
	 * @return the employeeDao
	 */
	public EmployeRegisterDao getEmployeeDao() {
		return employeeDao;
	}


	/**
	 * @param employeeDao the employeeDao to set
	 */
	public void setEmployeeDao(EmployeRegisterDao employeeDao) {
		this.employeeDao = employeeDao;
	}


	public void updateService(Employee employee) throws DataAccessException {
   
		
		employeeDao.update(employee);
		
	}

	
	
	
	
}
