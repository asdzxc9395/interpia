package interpia.web;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import interpia.domain.Employee;
import interpia.service.AcademyService;
import interpia.service.EducationService;
import interpia.service.EmployeeService;

@Controller
@RequestMapping("/education")
public class EducationController {

	@Autowired
	ServletContext servletContext;
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	EducationService educationService;
	
	@Autowired
	AcademyService academyService;

	@GetMapping("form")
	public String form() throws Exception {
		return "/WEB-INF/jsp/education/form.jsp";
	}
	
	@GetMapping("detail")
	  public String detail(Model model, int userNo) throws Exception {
			/*
			 * Employee employee = employeeService.get(userNo);
			 * 
			 * model.addAttribute("employee", employee); model.addAttribute("eduList",
			 * educationService.get(userNo)); model.addAttribute("acaList",
			 * academyService.get(userNo));
			 */
	    return "/WEB-INF/jsp/education/detail.jsp";
	  }
}
