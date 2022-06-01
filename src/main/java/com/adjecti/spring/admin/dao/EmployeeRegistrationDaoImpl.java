package com.adjecti.spring.admin.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.adjecti.spring.admin.entity.Employee;

@Repository
@Transactional()
public class EmployeeRegistrationDaoImpl implements EmployeRegisterDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

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

		this.hibernateTemplate.save(employee);
	}

	public List<Employee> getEmployee() {
		return hibernateTemplate.loadAll(Employee.class);
	}

	
	public Employee getEmployeeByCode(String employeeCode) {
		return this.hibernateTemplate.get(Employee.class, employeeCode);

	}

	
	public void deleteEmployee(String employeeCode) {

		Employee employee = this.hibernateTemplate.load(Employee.class, employeeCode);
		this.hibernateTemplate.delete(employee);

	}


	public void update(Employee employee) throws DataAccessException {

		hibernateTemplate.update(employee);

	}

}
