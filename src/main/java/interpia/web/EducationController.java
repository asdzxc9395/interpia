package interpia.web;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import interpia.domain.Education;
import interpia.domain.Employee;
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


	@GetMapping("form")
	public String form(Employee employee,
			 Model model, int no) throws Exception {
		model.addAttribute("employee", employeeService.get(no));
		return "/WEB-INF/jsp/education/form.jsp";
	}

	@RequestMapping(value ="/add", method = RequestMethod.POST)
	public String add(Education education,
			HttpServletRequest req) throws Exception {
			
		HttpSession session = req.getSession();
		int userNo = (int) session.getAttribute("userNo");

		education.setUserNo(userNo);
		education.setEducationNo(userNo);
		educationService.add(education);
		return "redirect:../certificate/form?no="+ education.getUserNo();
	}

	@GetMapping("detail")
	public String detail(int no, Model model) throws Exception {
		model.addAttribute("employee", employeeService.get(no));
		model.addAttribute("education", educationService.get(no));
		return "/WEB-INF/jsp/education/detail.jsp";
	}

	@PostMapping("update")
	public String update(Education education, int userNo) throws Exception {
		education.setUserNo(userNo);
		if (educationService.update(education) > 0) {
			System.out.println(education);
			return "redirect:../employee/list";
		} else {
			throw new Exception("변경할 게시물 번호가 유효하지 않습니다.");
		}
	}
}
