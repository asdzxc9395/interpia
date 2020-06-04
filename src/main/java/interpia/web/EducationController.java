package interpia.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import interpia.domain.Academy;
import interpia.domain.Education;
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

	@PostMapping("add")
	public String add(Model model,
			int userNo,
			String korName,
			String residentNo) throws Exception {
		// 회원정보 얻기
		Employee employee = employeeService.get(userNo);

		// 중복입력코드
		List<Academy> academys = new ArrayList<>();
		employee.setAcademyFiles(academys);

		// 교육정보 얻기
		Academy academy = new Academy();
		academy.setEmployee(employee);//리스트로 입력한것도 되나 함 볼게요

		Education education = new Education();
		education.setEmployee(employee);

		// 입력
		educationService.add(education);
		academyService.add(academy);
		return "redirect:list?userNo=" + userNo;
	}
	
	@GetMapping("detail")
	  public String detail(int no, Model model) throws Exception {
		Employee employee = employeeService.get(no);
		model.addAttribute("employee", employee);
	    model.addAttribute("education", educationService.get(no));
	    model.addAttribute("academy", academyService.get(no));
		return "/WEB-INF/jsp/education/detail.jsp";
	  }
	
	@PostMapping("update")
	public String update(Model model, int userNo) throws Exception {
		
		// 회원정보 얻기
		Employee employee = employeeService.get(userNo);
		
		// 교육정보 얻기
		Academy academy = academyService.get(userNo);
		Education education = educationService.get(userNo);
		education.setEmployee(employee);
		academy.setEmployee(employee);//리스트로 입력한것도 되나 함 볼게요

		// 입력
		educationService.update(education);
		academyService.update(academy);
		return "/WEB-INF/jsp/education/list.jsp";
	}
}

//Academy academy = academyService.get(userNo);
//Education education = educationService.get(userNo);
