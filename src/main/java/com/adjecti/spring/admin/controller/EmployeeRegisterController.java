package com.adjecti.spring.admin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.adjecti.spring.admin.entity.Employee;
import com.adjecti.spring.admin.service.EmployeeRegistrationService;

@Controller
@RequestMapping("/admin")
public class EmployeeRegisterController {

	@Autowired
	private EmployeeRegistrationService employeeService;

	  // / for login page 
	/*
	 * @RequestMapping(value="/",method = RequestMethod.GET) public String login() {
	 * return "loginPage"; }
	 * 
	 * @RequestMapping("/login") public String LoginView() { return ""; }
	 * 
	 * @RequestMapping(value = "/error") public String errorPage() { return "error";
	 * }
	 */
	 // login by admin name = admin and password = 123
	  @RequestMapping(value = "/admin_home_page")
	  public String AdminLogin() { 
		  
		  return "admin_home_deshboard";
	  }
	  @RequestMapping("/home") 
	  public String firstHomePage() {
		  return "admin_home_deshboard";
		  }
	  
	  
	  @RequestMapping("/logout")
		public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (auth != null) {
				new SecurityContextLogoutHandler().logout(request, response, auth);
			}
			return "redirect:/";
		}
	  
	/*
	 * @RequestMapping(value = "/admin_home_page") public String Login() {
	 * 
	 * return "admin_home_deshboard"; }
	 */
	  
	  
	  
	  
	/*
	 * @RequestMapping(value = "/success") public String success() {
	 * System.out.println("---------------success---------------"); return
	 * "redirect:admin/admin_home_deshboard"; }
	 */
	/*
	 * @RequestMapping(value="/") public String userLogin() {
	 * 
	 * 
	 * return "userdeshboard"; }
	 */
	
	
	 
	 

	
	/*
	 * @RequestMapping("/home") public String homeView() { return "home_page"; }
	 */
	
	@RequestMapping("/employeeRegistration")
	public String EmployeeRegistrationView() {
		return "employee_registration";
	}

	// for view particulat employee

	@RequestMapping(value = "/viewempPage", method = RequestMethod.GET)
	public String viewEmpPage() {

		return "searchByCode";
	}

	@RequestMapping(value = "/view_employee",method=RequestMethod.POST)
	public String viewSearchedEmployee(@RequestParam("empcode") String employeeCode, Model model) {
		System.out.println("searched employee");
		
		  model.addAttribute("empinfo", employeeService.getEmployeeByCodeService(employeeCode));
		 	return "searchByCode";
	}

	/*
	 * @RequestMapping(value = "/edit_employee", method=RequestMethod.POST) public
	 * String editEmployee() { return "edit_employee"; }
	 */

	@RequestMapping("/employee_registration")
	public String getPage() {
		return "employee_registration";
	}

	@RequestMapping(value = "/employee_form", method = RequestMethod.POST)
	@Transactional()
	public String save(@ModelAttribute("emp") Employee emp) {
		employeeService.addDetailsService(emp);

		return "redirect:viewemp";

	}

	@RequestMapping("/viewemp")
	public ModelAndView viewemp() {
		ModelAndView modelAndView = new ModelAndView();
		List<Employee> list = employeeService.getEmployeeService();
		
		modelAndView.addObject("list", list);

		// setting the view
		modelAndView.setViewName("show");
		return modelAndView;

	}

	@RequestMapping("/viewalldetails/{id}")
	public String viewAllDetails(@PathVariable("id") String employeeCode, Model model) {
		Employee employee = employeeService.getEmployeeByCodeService(employeeCode);
		model.addAttribute("employeeFullDetails", employee);
        
		return "view_all_details";

	}

	
	
	@RequestMapping(value = "/delete_employee/{employeeCode}",method=RequestMethod.GET)
	@Transactional()
	public RedirectView deleteEmployee(@PathVariable("employeeCode") String employeeCode,HttpServletRequest req) {
System.out.println("----------delete employee----------"+employeeCode);
		
      this.employeeService.deleteEmployeeService(employeeCode);
          ModelAndView modelAndView = new ModelAndView();
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(req.getContextPath()+"/admin/viewemp");
		System.out.println("url "+req.getContextPath()+"/viewemp");
		
		return redirectView;
		  
	}

	@RequestMapping("/update")
	public ModelAndView UpdateForm(@RequestParam("empCode") String employeeCode) {
		System.out.println("________<><><><>><>> updateform ..");
		  ModelAndView modelAndView = new ModelAndView("EmployeeUpdate"); 
		  Employee employee = employeeService.getEmployeeByCodeService(employeeCode);
		  modelAndView.addObject("EmployeeUpdate", employee);
		  modelAndView.setViewName("update_form");
		 
		return modelAndView;

	}

	@RequestMapping(value = "/updateform" ,method = RequestMethod.POST)
	public ModelAndView updateSave(@RequestParam("employeeCode") String empCode, @ModelAttribute Employee employee) {
		System.out.println("------updated....><<<><><><------" + employee.getEmployeeCode());
		ModelAndView modelAndView = new ModelAndView();
		
		  employeeService.updateService(employee);
		  
		  modelAndView.setViewName("redirect:viewemp");
		 
		return modelAndView;

	}
	
	
	@RequestMapping(value="/file_upload",method=RequestMethod.POST)
	public String FileUpload(HttpServletRequest req) throws IOException {
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(new File("E://"));
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setFileSizeMax(20*1024*1024);
		
		boolean status = ServletFileUpload.isMultipartContent(req);
		if(status) {
		String currentprojectlocation =	req.getServletContext().getRealPath("/");
		File folder	=new File(currentprojectlocation,"profileImages");
		if(!folder.exists())
			folder.mkdir();
		
		File file = File.createTempFile("profile", ".jpg", folder);
         System.out.println(file.getAbsolutePath());
         
        try {
			List<FileItem> formItems = upload.parseRequest(req);
			Iterator<FileItem> it =formItems.iterator();
			while(it.hasNext()) {
				
				FileItem fileItem = it.next();
				if(!fileItem.isFormField()) {
					// file upload 
					
					System.out.println(fileItem.getName());
					System.out.println(fileItem.getContentType());
					System.out.println(fileItem.get());
					System.out.println(fileItem.getSize());
					System.out.println(fileItem.getFieldName());
					
					FileOutputStream fo = new FileOutputStream(file);
					fo.write(fileItem.get());
					fo.close();
					System.out.println(file.getAbsolutePath());
					
					
				}
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		}
		return "demo";
	}
	
	
	@RequestMapping(value="/file_upload_page",method=RequestMethod.GET)
	public String FileUploadPage() {
		return "fileupload";
	}

	
	
	
	// Employee controller for filling up his details .
	
	
	
}
