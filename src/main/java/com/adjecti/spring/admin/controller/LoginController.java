
package com.adjecti.spring.admin.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.adjecti.spring.admin.dao.UserRepositoryImpl;
import com.adjecti.spring.admin.entity.User;
import com.adjecti.spring.admin.entity.UserRole;

@Controller
public class LoginController {

	@Autowired
	private UserRepositoryImpl userRepositoryImpl;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() {
		return "loginPage";
	}

	/*
	 * @RequestMapping(value = "/login", method = RequestMethod.POST) public String
	 * LoginView() { return ""; }
	 */
	@RequestMapping(value = "/success")
	public String success(Principal principal) {
		String role = "ROLE_ADMIN";
		boolean flag = false;
		User user = userRepositoryImpl.findByUserByEmpCode(principal.getName());
		System.out.println("user name "+principal.getName());
		for (UserRole r : user.getUserRole()) {
			if (role.equalsIgnoreCase(r.getRole())) {
				flag = true;
			}
		}
		if (flag == true) {
			return "redirect:admin/admin_home_page";
		}else {
			return "redirect:user/home";
		}


	}

}
