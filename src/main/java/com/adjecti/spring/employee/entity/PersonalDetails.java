package com.adjecti.spring.employee.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.adjecti.spring.admin.entity.Employee;

@Entity
public class PersonalDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String joiningDate;
	private String employeeCode;
	private String employeeName;

	@NotNull(message = "******************")
	private String fatherName;
	private String motherName;
	private String email;
	private String dateBirth;
	private String gender;
	private String maritalStatus;
	private String bloodGroup;
	private String disability;
	private String hobbies;
	private String country;
	private String religion;
	private String number;
	private String designation;
	private String department;
	private String emgNumber;
	private String aadhaarNo;
	private String aadharFileName;
	private String panFileName;

	@Transient
	private CommonsMultipartFile aadharFile;

	@Transient
	private CommonsMultipartFile panFile;

	private String panNo;

	@OneToOne
	@JoinColumn(name="emp_code")
	private Employee employee;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the joiningDate
	 */
	public String getJoiningDate() {
		return joiningDate;
	}

	/**
	 * @param joiningDate the joiningDate to set
	 */
	public void setJoiningDate(String joiningDate) {
		this.joiningDate = joiningDate;
	}

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
	 * @return the employeeName
	 */
	public String getEmployeeName() {
		return employeeName;
	}

	/**
	 * @param employeeName the employeeName to set
	 */
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
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
	 * @return the motherName
	 */
	public String getMotherName() {
		return motherName;
	}

	/**
	 * @param motherName the motherName to set
	 */
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the dateBirth
	 */
	public String getDateBirth() {
		return dateBirth;
	}

	/**
	 * @param dateBirth the dateBirth to set
	 */
	public void setDateBirth(String dateBirth) {
		this.dateBirth = dateBirth;
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
	 * @return the maritalStatus
	 */
	public String getMaritalStatus() {
		return maritalStatus;
	}

	/**
	 * @param maritalStatus the maritalStatus to set
	 */
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
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
	 * @return the disability
	 */
	public String getDisability() {
		return disability;
	}

	/**
	 * @param disability the disability to set
	 */
	public void setDisability(String disability) {
		this.disability = disability;
	}

	/**
	 * @return the hobbies
	 */
	public String getHobbies() {
		return hobbies;
	}

	/**
	 * @param hobbies the hobbies to set
	 */
	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
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
	 * @return the religion
	 */
	public String getReligion() {
		return religion;
	}

	/**
	 * @param religion the religion to set
	 */
	public void setReligion(String religion) {
		this.religion = religion;
	}

	/**
	 * @return the number
	 */
	public String getNumber() {
		return number;
	}

	/**
	 * @param number the number to set
	 */
	public void setNumber(String number) {
		this.number = number;
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
	 * @return the emgNumber
	 */
	public String getEmgNumber() {
		return emgNumber;
	}

	/**
	 * @param emgNumber the emgNumber to set
	 */
	public void setEmgNumber(String emgNumber) {
		this.emgNumber = emgNumber;
	}

	/**
	 * @return the aadhaarNo
	 */
	public String getAadhaarNo() {
		return aadhaarNo;
	}

	/**
	 * @param aadhaarNo the aadhaarNo to set
	 */
	public void setAadhaarNo(String aadhaarNo) {
		this.aadhaarNo = aadhaarNo;
	}

	/**
	 * @return the aadharFileName
	 */
	public String getAadharFileName() {
		return aadharFileName;
	}

	/**
	 * @param aadharFileName the aadharFileName to set
	 */
	public void setAadharFileName(String aadharFileName) {
		this.aadharFileName = aadharFileName;
	}

	/**
	 * @return the panFileName
	 */
	public String getPanFileName() {
		return panFileName;
	}

	/**
	 * @param panFileName the panFileName to set
	 */
	public void setPanFileName(String panFileName) {
		this.panFileName = panFileName;
	}

	/**
	 * @return the aadharFile
	 */
	public CommonsMultipartFile getAadharFile() {
		return aadharFile;
	}

	/**
	 * @param aadharFile the aadharFile to set
	 */
	public void setAadharFile(CommonsMultipartFile aadharFile) {
		this.aadharFile = aadharFile;
	}

	/**
	 * @return the panFile
	 */
	public CommonsMultipartFile getPanFile() {
		return panFile;
	}

	/**
	 * @param panFile the panFile to set
	 */
	public void setPanFile(CommonsMultipartFile panFile) {
		this.panFile = panFile;
	}

	/**
	 * @return the panNo
	 */
	public String getPanNo() {
		return panNo;
	}

	/**
	 * @param panNo the panNo to set
	 */
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}

	/**
	 * @return the employee
	 */
	public Employee getEmployee() {
		return employee;
	}

	/**
	 * @param employee the employee to set
	 */
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	/**
	 * @param id
	 * @param joiningDate
	 * @param employeeCode
	 * @param employeeName
	 * @param fatherName
	 * @param motherName
	 * @param email
	 * @param dateBirth
	 * @param gender
	 * @param maritalStatus
	 * @param bloodGroup
	 * @param disability
	 * @param hobbies
	 * @param country
	 * @param religion
	 * @param number
	 * @param designation
	 * @param department
	 * @param emgNumber
	 * @param aadhaarNo
	 * @param aadharFileName
	 * @param panFileName
	 * @param aadharFile
	 * @param panFile
	 * @param panNo
	 * @param employee
	 */
	public PersonalDetails(int id, String joiningDate, String employeeCode, String employeeName, String fatherName,
			String motherName, String email, String dateBirth, String gender, String maritalStatus, String bloodGroup,
			String disability, String hobbies, String country, String religion, String number, String designation,
			String department, String emgNumber, String aadhaarNo, String aadharFileName, String panFileName,
			CommonsMultipartFile aadharFile, CommonsMultipartFile panFile, String panNo, Employee employee) {
		super();
		this.id = id;
		this.joiningDate = joiningDate;
		this.employeeCode = employeeCode;
		this.employeeName = employeeName;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.email = email;
		this.dateBirth = dateBirth;
		this.gender = gender;
		this.maritalStatus = maritalStatus;
		this.bloodGroup = bloodGroup;
		this.disability = disability;
		this.hobbies = hobbies;
		this.country = country;
		this.religion = religion;
		this.number = number;
		this.designation = designation;
		this.department = department;
		this.emgNumber = emgNumber;
		this.aadhaarNo = aadhaarNo;
		this.aadharFileName = aadharFileName;
		this.panFileName = panFileName;
		this.aadharFile = aadharFile;
		this.panFile = panFile;
		this.panNo = panNo;
		this.employee = employee;
	}

	/**
	 * 
	 */
	public PersonalDetails() {
		super();
	}
	

}