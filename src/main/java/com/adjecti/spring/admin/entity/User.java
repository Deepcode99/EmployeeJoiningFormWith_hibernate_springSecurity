
package com.adjecti.spring.admin.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity

@Table(name = "users")
public class User {

	@Id

	@Column(name = "empcode")
	private String empcode;

	@Column(name = "password", nullable = false)
	private String password;

	@Column(name = "enabled", nullable = false)
	private boolean enabled;

	@Column(name = "user_role", nullable = false)

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	private Set<UserRole> userRole = new HashSet<UserRole>();

	

	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Set<UserRole> getUserRole() {
		return userRole;
	}

	public void setUserRole(Set<UserRole> userRole) {
		this.userRole = userRole;
	}

	/**
	 * @return the empcode
	 */
	public String getEmpcode() {
		return empcode;
	}

	/**
	 * @param empcode the empcode to set
	 */
	public void setEmpcode(String empcode) {
		this.empcode = empcode;
	}

	public User(String empcode, String password, boolean enabled, Set<UserRole> userRole) {
		super();
       this.empcode= empcode;
		this.password = password;
		this.enabled = enabled;
		this.userRole = userRole;
	}

	public User() { super(); // TODO Auto-generated constructor stub }
  
  
  
  
  }
}