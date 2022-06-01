package com.adjecti.spring.admin.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.adjecti.spring.admin.entity.Employee;

public interface EmployeeRegistrationService  {

	public void addDetailsService(Employee employee);
	public List<Employee> getEmployeeService();
	public Employee getEmployeeByCodeService(String employeeCode);
	
    public void deleteEmployeeService(String employeeCode);
    
    public void updateService(Employee employee) throws DataAccessException ;
}
