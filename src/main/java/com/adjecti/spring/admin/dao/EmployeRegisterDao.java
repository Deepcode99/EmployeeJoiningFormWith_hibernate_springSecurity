package com.adjecti.spring.admin.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.adjecti.spring.admin.entity.Employee;

public interface EmployeRegisterDao {

	public void addDetails(Employee employee);
	
	public List<Employee> getEmployee();
	
    public Employee getEmployeeByCode(String employeeCode);
   
    public void deleteEmployee(String employeeCode);
    
    public void update(Employee employee) throws DataAccessException;
   
}
