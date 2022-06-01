
package com.adjecti.spring.admin.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.security.core.userdetails.User;

import com.adjecti.spring.admin.dao.UserRepository;
import com.adjecti.spring.admin.dao.UserRepositoryImpl;
import com.adjecti.spring.admin.entity.UserRole;

@Service
public class UserDetailsServiceImple implements UserDetailsService {

	@Autowired
	private UserRepositoryImpl userRepo;

	public UserRepositoryImpl getUserRepo() {
		return userRepo;
	}

	public void setUserRepo(UserRepositoryImpl userRepo) {
		this.userRepo = userRepo;
	}

	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String empcode) throws UsernameNotFoundException {
		System.out.println(empcode + "<<<<<<<<<<<----------------username");

		com.adjecti.spring.admin.entity.User user = userRepo.findByUserByEmpCode(empcode);
		System.out.println(user.getPassword() + "<>><><><><><><<><><");
		
		
		
		List<GrantedAuthority> authorities = buildUserAuthority(user.getUserRole());
   
		System.out.println("userRole "+user.getUserRole());
		
		
		 
		return buildUserForAuthentication(user, authorities);
	}

	// Converts org.adj.amgmt.entity.User user to //
	// org.springframework.security.core.userdetails.User

	private User buildUserForAuthentication(com.adjecti.spring.admin.entity.User user,
			List<GrantedAuthority> authorities) {
		System.out.println(user.getEmpcode() + "<--------------");
		return new User(user.getEmpcode(), user.getPassword(), user.isEnabled(), true, true, true, authorities);
	}

	private List<GrantedAuthority> buildUserAuthority(Set<UserRole> userRoles) {

		Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();

		// Build user's authorities
		for (UserRole userRole : userRoles) {
			setAuths.add(new SimpleGrantedAuthority(userRole.getRole()));
		}

		List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);

		return Result;
	}

}
