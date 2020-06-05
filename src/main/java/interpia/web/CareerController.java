package interpia.web;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import interpia.domain.Career;
import interpia.domain.Employee;
import interpia.service.CareerService;
import interpia.service.EmployeeService;

@Controller
@RequestMapping("/career")
public class CareerController {

	@Autowired
	ServletContext servletContext;

	@Autowired
	EmployeeService employeeService;

	@Autowired
	CareerService careerService;

	@GetMapping("form")
	  public String form() throws Exception {
		return "/WEB-INF/jsp/career/form.jsp";
	  }

	@PostMapping("add")
	public String add(Model model,
			int userNo,
			String korName,
			String residentNo) throws Exception {
		// 회원정보 얻기
		Employee employee = employeeService.get(userNo);

		Career career = new Career();
		career.setEmployee(employee);

		// 입력
		careerService.add(career);
		return "redirect:list?userNo=" + userNo;
	}
	
	@GetMapping("detail")
	  public String detail(int no, Model model) throws Exception {
		Employee employee = employeeService.get(no);
		model.addAttribute("employee", employee);
	    model.addAttribute("career", careerService.get(no));
	    return "/WEB-INF/jsp/career/detail.jsp";
	  }
	
	@PostMapping("update")
	public String update(Model model, int userNo) throws Exception {
		
		// 회원정보 얻기
		Employee employee = employeeService.get(userNo);
		Career career = careerService.get(userNo);
		
		career.setEmployee(employee);
		
		// 입력
		careerService.update(career);
		return "redirect:../career/list";
	}
}

//Academy academy = academyService.get(userNo);
//Education education = educationService.get(userNo);
