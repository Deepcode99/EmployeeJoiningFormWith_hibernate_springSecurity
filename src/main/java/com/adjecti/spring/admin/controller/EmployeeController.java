package com.adjecti.spring.admin.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.Spring;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.apache.commons.fileupload.UploadContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.adjecti.spring.admin.entity.Employee;
import com.adjecti.spring.admin.service.EmployeeRegistrationService;
import com.adjecti.spring.employee.entity.EducationDetails;
import com.adjecti.spring.employee.entity.PersonalDetails;
import com.adjecti.spring.employee.service.EducationDetailsService;
import com.adjecti.spring.employee.service.PersonalDetailsService;
import com.adjecti.spring.employee.service.PersonalDetailsServiceImpl;

@Controller
@RequestMapping("/user")
public class EmployeeController {

	private static final String UPLOAD_DIRECTORY = "/uploadedphotos";
	@Autowired
	private PersonalDetailsService personaldetailsService;

	@Autowired
	EmployeeRegistrationService employeeService;

	@Autowired
	private EducationDetailsService educationdetailsService;

	// method for show personaldetails jsp page
	@RequestMapping("/personal_navbar")
	public ModelAndView showPersonalDetailsForm(Principal principal, String employeeCode) {
		ModelAndView modelAndView = new ModelAndView("details");
		Employee employee = employeeService.getEmployeeByCodeService(principal.getName());
		modelAndView.addObject("personalInfo", employee);

		modelAndView.setViewName("personalDetails");

		return modelAndView;
	}

	/*
	 * @RequestMapping("/education_navbar") public String showEducationdetailsForm()
	 * { return "education_details"; }
	 */

	@RequestMapping("/show_education_details")
	public String showEducationTable() {
		return "showeducationdetails";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView SaveAndUpload(@Valid @ModelAttribute("personalData") PersonalDetails pDetails,
			HttpSession session, Errors errors) throws IOException {
		ServletContext context = session.getServletContext();

		if (errors.hasErrors()) {
			System.out.println("--------------------errors========================>deepu<-----------------" + errors);
			return new ModelAndView("error", "filefailure", "File Not Uploaded");
		} else {

			String path = context.getRealPath(UPLOAD_DIRECTORY);
			String aadharfilename = pDetails.getAadharFile().getOriginalFilename();
			String panfilename = pDetails.getPanFile().getOriginalFilename();

			System.out.println(path + " " + "file name <><><><>" + aadharfilename);
			System.out.println(path + " " + "file name <><><><>" + panfilename);

			byte[] bytes = pDetails.getAadharFile().getBytes();
			BufferedOutputStream stream = new BufferedOutputStream(
					new FileOutputStream(new File(path + File.separator + aadharfilename)));
			stream.write(bytes);
			stream.flush();
			stream.close();
			byte[] bytes1 = pDetails.getPanFile().getBytes();
			BufferedOutputStream stream1 = new BufferedOutputStream(
					new FileOutputStream(new File(path + File.separator + panfilename)));
			stream1.write(bytes1);
			stream1.flush();
			stream1.close();

			pDetails.setAadharFileName(aadharfilename);
			pDetails.setPanFileName(panfilename);
			personaldetailsService.addPersonalDetailsService(pDetails);
			return new ModelAndView("demo", "filesuccess", "File successfully saved!");
		}
	}

	/*
	 * @RequestMapping(value = "/save", method = RequestMethod.POST)
	 * 
	 * @Transactional() public String save(@ModelAttribute("personalData")
	 * PersonalDetails pDetails,
	 * 
	 * @RequestParam("aadhar") MultipartFile aadhar, @RequestParam("pan")
	 * MultipartFile pan, Model mapModel, HttpServletRequest servletRequest) { {
	 * List<MultipartFile> filePath=new ArrayList<MultipartFile>();
	 * filePath.add(aadhar); filePath.add(pan); pDetails.setFilePath(filePath);
	 * System.out.println("file path "+aadhar.getName());
	 * 
	 * // Get the uploaded files and store them List<MultipartFile> files =
	 * pDetails.getFilePath(); List<String> fileNames = new ArrayList<String>(); if
	 * (null != files && files.size() > 0) { for (MultipartFile multipartFile :
	 * files) {
	 * 
	 * String fileName = multipartFile.getOriginalFilename();
	 * fileNames.add(fileName);
	 * 
	 * File imageFile = new
	 * File(servletRequest.getServletContext().getRealPath("/images/"), fileName);
	 * try { multipartFile.transferTo(imageFile); } catch (Exception e) {
	 * e.printStackTrace(); } } }
	 * 
	 * // Here, you can save the product details in database
	 * 
	 * // personaldetailsService.addPersonalDetailsService(pDetails); return "demo";
	 * } }
	 */
	/*
	 * @RequestMapping(value = "/personal", method = RequestMethod.POST) public
	 * ModelAndView personalDetail(@RequestParam(value = "action", required = true)
	 * String action,
	 * 
	 * @ModelAttribute("details") PersonalDetails detail) {
	 * System.out.println("personalInfo"); ModelAndView mv = new ModelAndView();
	 * 
	 * personaldetailsService.addPersonalDetailsService(detail);
	 * 
	 * if (action.equalsIgnoreCase("save")) { System.out.println("save");
	 * mv.addObject("message","you are successfully submit");
	 * mv.setViewName("employee"); return mv; } else if
	 * (action.equalsIgnoreCase("save&continue")) {
	 * System.out.println("save&continue"); mv.setViewName("address_details");
	 * return mv; } return mv; }
	 * 
	 */

	@RequestMapping(value = "/uploadfile", method = RequestMethod.POST)
	public String uploadFile(@RequestParam("FilePath") CommonsMultipartFile file, HttpSession s, Model model) {
		System.out.println("file uploading .....");
		/*
		 * for (CommonsMultipartFile commonsMultipartFile : files) {
		 * System.out.println(commonsMultipartFile.getContentType());
		 * System.out.println(commonsMultipartFile.getOriginalFilename());
		 * System.out.println(commonsMultipartFile.getSize()); }
		 */

		byte[] data = file.getBytes();
		String path = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources" + File.separator
				+ "images" + File.separator + file.getOriginalFilename();
		System.out.println("path");
		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
			System.out.println("file Uploaded");
			model.addAttribute("msg", "uploaded successfully");
			model.addAttribute("filename", file.getOriginalFilename());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

			System.out.println("uploading error");
			model.addAttribute("msg", "uploaded error");

		}

		return "demo";
	}

	@RequestMapping(value = "/navbar")
	public String loginUser() {
		return "navbar";
	}

	// user home

	@RequestMapping("/home")
	public String userHome() {
		return "employeehomepage";
	}

	// user logout
	@RequestMapping("/logout")
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/";
	}

	// Education details controller are here

	@RequestMapping(value = "/saveEducation", method = RequestMethod.POST)
	public ModelAndView saveEducationDetails(@Valid @ModelAttribute("educationData") EducationDetails eDetails,
			HttpSession session, Errors errors,Principal principal) throws IOException {

		ServletContext context = session.getServletContext();
		if (errors.hasErrors()) {
			System.out.println("-----errors========>deepu<-----" + errors);
			return new ModelAndView("error", "filefailure", "File Not Uploaded");
		} else {

			String path = context.getRealPath(UPLOAD_DIRECTORY);
			String certificateFileName = eDetails.getCertificateFile().getOriginalFilename();
			System.out.println(path + " " + "file name <><><><>" + certificateFileName);

		
			byte[] bytes = eDetails.getCertificateFile().getBytes();
			BufferedOutputStream stream = new BufferedOutputStream(
					new FileOutputStream(new File(path + File.separator + certificateFileName)));
			stream.write(bytes);
			stream.flush();
			stream.close();
	     	eDetails.setCertificateName(certificateFileName);
	     	Employee employee = employeeService.getEmployeeByCodeService(principal.getName());
	     	System.out.println("------------->"+employee+"<---------------");
	     	eDetails.setEmployee(employee);
		educationdetailsService.addEducationDetailsService(eDetails);
		return new ModelAndView("", "filesuccess", "File successfully saved!");
	}

}}
