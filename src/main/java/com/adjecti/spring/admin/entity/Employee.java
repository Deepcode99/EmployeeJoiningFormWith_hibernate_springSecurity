package com.adjecti.spring.admin.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.adjecti.spring.employee.dao.PersonalDetailsDao;
import com.adjecti.spring.employee.entity.EducationDetails;
import com.adjecti.spring.employee.entity.PersonalDetails;

import javassist.expr.NewArray;

@Entity
public class Employee {

	@Id
	private String employeeCode;

	private String name;
	private String fatherName;
	private String bloodGroup;
	private String phoneNumber;
	private String emailId;
	private String country;
	private String designation;
	private String department;
	private String gender;
	private String dateOfBirth;

	@OneToOne
	@JoinColumn(name = "personal_id")
	private PersonalDetails personaldetails;

	/*
	 * @OneToMany
	 * 
	 * @JoinColumn(name = "employeeCode") private List<EducationDetails>
	 * educationDetails;
	 */
	/**
	 * @return the employeeCode
	 */
	public String getEmployeeCode() {
		return employeeCode;
	}

	/**
	 * @param employeeCode the employeeCode to set
	 */
	public void setEmployeeCode(String employeeCode) {
		this.employeeCode = employeeCode;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the fatherName
	 */
	public String getFatherName() {
		return fatherName;
	}

	/**
	 * @param fatherName the fatherName to set
	 */
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	/**
	 * @return the bloodGroup
	 */
	public String getBloodGroup() {
		return bloodGroup;
	}

	/**
	 * @param bloodGroup the bloodGroup to set
	 */
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	/**
	 * @return the phoneNumber
	 */
	public String getPhoneNumber() {
		return phoneNumber;
	}

	/**
	 * @param phoneNumber the phoneNumber to set
	 */
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	/**
	 * @return the emailId
	 */
	public String getEmailId() {
		return emailId;
	}

	/**
	 * @param emailId the emailId to set
	 */
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}

	/**
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}

	/**
	 * @return the designation
	 */
	public String getDesignation() {
		return designation;
	}

	/**
	 * @param designation the designation to set
	 */
	public void setDesignation(String designation) {
		this.designation = designation;
	}

	/**
	 * @return the department
	 */
	public String getDepartment() {
		return department;
	}

	/**
	 * @param department the department to set
	 */
	public void setDepartment(String department) {
		this.department = department;
	}

	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}

	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}

	/**
	 * @return the dateOfBirth
	 */
	public String getDateOfBirth() {
		return dateOfBirth;
	}

	/**
	 * @param dateOfBirth the dateOfBirth to set
	 */
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	/**
	 * @return the personaldetails
	 */
	public PersonalDetails getPersonaldetails() {
		return personaldetails;
	}

	/**
	 * @param personaldetails the personaldetails to set
	 */
	public void setPersonaldetails(PersonalDetails personaldetails) {
		this.personaldetails = personaldetails;
	}

	/**
	 * @return the educationDetails
	 */
	/*
	 * public List<EducationDetails> getEducationDetails() { return
	 * educationDetails; }
	 * 
	 * 
	 *//**
		 * @param educationDetails the educationDetails to set
		 *//*
			 * public void setEducationDetails(List<EducationDetails> educationDetails) {
			 * this.educationDetails = educationDetails; }
			 */

	/**
	 * @param employeeCode
	 * @param name
	 * @param fatherName
	 * @param bloodGroup
	 * @param phoneNumber
	 * @param emailId
	 * @param country
	 * @param designation
	 * @param department
	 * @param gender
	 * @param dateOfBirth
	 * @param personaldetails
	 * @param educationDetails
	 */
	public Employee(String employeeCode, String name, String fatherName, String bloodGroup, String phoneNumber,
			String emailId, String country, String designation, String department, String gender, String dateOfBirth,
			PersonalDetails personaldetails) {
		super();
		this.employeeCode = employeeCode;
		this.name = name;
		this.fatherName = fatherName;
		this.bloodGroup = bloodGroup;
		this.phoneNumber = phoneNumber;
		this.emailId = emailId;
		this.country = country;
		this.designation = designation;
		this.department = department;
		this.gender = gender;
		this.dateOfBirth = dateOfBirth;
		this.personaldetails = personaldetails;
	}

	/**
	 * 
	 */
	public Employee() {
		super();
	}

}
