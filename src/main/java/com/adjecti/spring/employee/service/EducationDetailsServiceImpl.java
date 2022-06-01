package com.adjecti.spring.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.adjecti.spring.admin.dao.EmployeRegisterDao;
import com.adjecti.spring.admin.entity.Employee;
import com.adjecti.spring.admin.service.EmployeeRegistrationService;
import com.adjecti.spring.employee.dao.EducationDetailsDao;
import com.adjecti.spring.employee.entity.EducationDetails;

@Service
public class EducationDetailsServiceImpl implements EducationDetailsService,EmployeeRegistrationService {

	
	@Autowired
	private EducationDetailsDao educationDetailsDao;
	
	@Autowired
    EmployeRegisterDao employeeDao;

	
	
	public void addEducationDetailsService(EducationDetails educationDetails) {
	
	educationDetailsDao.addEducationDetails(educationDetails);
		
	}

	/**
	 * @return the educationDetailsDao
	 */
	public EducationDetailsDao getEducationDetailsDao() {
		return educationDetailsDao;
	}

	/**
	 * @param educationDetailsDao the educationDetailsDao to set
	 */
	public void setEducationDetailsDao(EducationDetailsDao educationDetailsDao) {
		this.educationDetailsDao = educationDetailsDao;
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
