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

import interpia.domain.Working;
import interpia.domain.Career;
import interpia.domain.Employee;
import interpia.service.WorkingService;
import interpia.service.EmployeeService;

@Controller
@RequestMapping("/working")
public class WorkingController {

	@Autowired
	ServletContext servletContext;

	@Autowired
	EmployeeService employeeService;

	@Autowired
	WorkingService workingService;

	@GetMapping("form")
	public String form(Employee employee,
			 Model model, int no) throws Exception {
		model.addAttribute("employee", employeeService.get(no));
		return "/WEB-INF/jsp/working/form.jsp";
	}

	@RequestMapping(value ="/add", method = RequestMethod.POST)
	public String add(Working working,
			HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		int userNo = (int) session.getAttribute("userNo");

		
		working.setUserNo(userNo);	
		System.out.println(working);
		workingService.add(working);
		return "redirect:../employee/list";
	}
	
	@GetMapping("detail")
	  public String detail(int no, Model model) throws Exception {
		Employee employee = employeeService.get(no);
		model.addAttribute("employee", employee);
	    model.addAttribute("working", workingService.get(no));
	    return "/WEB-INF/jsp/working/detail.jsp";
	  }
	
	@PostMapping("update")
	public String update(Working working, int userNo) throws Exception {
		
		// 입력
		workingService.update(working);
		return "redirect:../employee/list";
	}
}

//Academy academy = academyService.get(userNo);
//Education education = educationService.get(userNo);
