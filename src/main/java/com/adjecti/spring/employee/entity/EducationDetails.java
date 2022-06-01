package com.adjecti.spring.employee.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.adjecti.spring.admin.entity.Employee;

@Entity
@Table(name = "educationDetails")
public class EducationDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String qualification;
	private String board;
	private String specialization;
	private String collegeName;
	private String passingYear;
	private float percentage;
	private String certificateName;

	@Transient
	private MultipartFile certificateFile;

	@ManyToOne
	@JoinColumn(name = "employeeCode")
	private Employee employee;

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
	 * @return the qualification
	 */
	public String getQualification() {
		return qualification;
	}

	/**
	 * @param qualification the qualification to set
	 */
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	/**
	 * @return the board
	 */
	public String getBoard() {
		return board;
	}

	/**
	 * @param board the board to set
	 */
	public void setBoard(String board) {
		this.board = board;
	}

	/**
	 * @return the specialization
	 */
	public String getSpecialization() {
		return specialization;
	}

	/**
	 * @param specialization the specialization to set
	 */
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}

	/**
	 * @return the collegeName
	 */
	public String getCollegeName() {
		return collegeName;
	}

	/**
	 * @param collegeName the collegeName to set
	 */
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	/**
	 * @return the passingYear
	 */
	public String getPassingYear() {
		return passingYear;
	}

	/**
	 * @param passingYear the passingYear to set
	 */
	public void setPassingYear(String passingYear) {
		this.passingYear = passingYear;
	}

	/**
	 * @return the percentage
	 */
	public float getPercentage() {
		return percentage;
	}

	/**
	 * @param percentage the percentage to set
	 */
	public void setPercentage(float percentage) {
		this.percentage = percentage;
	}

	/**
	 * @return the certificateName
	 */
	public String getCertificateName() {
		return certificateName;
	}

	/**
	 * @param certificateName the certificateName to set
	 */
	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}

	/**
	 * @return the certificateFile
	 */
	public MultipartFile getCertificateFile() {
		return certificateFile;
	}

	/**
	 * @param certificateFile the certificateFile to set
	 */
	public void setCertificateFile(MultipartFile certificateFile) {
		this.certificateFile = certificateFile;
	}

	/**
	 * @param id
	 * @param qualification
	 * @param board
	 * @param specialization
	 * @param collegeName
	 * @param passingYear
	 * @param percentage
	 * @param certificateName
	 * @param certificateFile
	 */
	public EducationDetails(int id, String qualification, String board, String specialization, String collegeName,
			String passingYear, float percentage, String certificateName, MultipartFile certificateFile) {
		super();
		this.id = id;
		this.qualification = qualification;
		this.board = board;
		this.specialization = specialization;
		this.collegeName = collegeName;
		this.passingYear = passingYear;
		this.percentage = percentage;
		this.certificateName = certificateName;
		this.certificateFile = certificateFile;
	}

	/**
	 * 
	 */
	public EducationDetails() {
		super();
	}

}
