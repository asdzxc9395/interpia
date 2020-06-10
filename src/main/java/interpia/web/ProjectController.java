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

import interpia.domain.Employee;
import interpia.domain.Project;
import interpia.service.EmployeeService;
import interpia.service.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {

	@Autowired
	ServletContext servletContext;

	@Autowired
	EmployeeService employeeService;

	@Autowired
	ProjectService projectService;
	
	
	@GetMapping("form")
	public String form(Employee employee,
			 Model model, int no) throws Exception {
		model.addAttribute("employee", employeeService.get(no));
		return "/WEB-INF/jsp/project/form.jsp";
	}

	@RequestMapping(value ="/add", method = RequestMethod.POST)
	public String add(Project project,
			HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		int userNo = (int) session.getAttribute("userNo");
		
		project.setUserNo(userNo);
		project.setProjectNo(userNo);
		// 입력
		projectService.add(project);
		return "redirect:../career/form?no="+ project.getUserNo();
	}
	
	@GetMapping("detail")
	  public String detail(int no, Model model) throws Exception {
		model.addAttribute("employee", employeeService.get(no));
	    model.addAttribute("project", projectService.get(no));
	    return "/WEB-INF/jsp/project/detail.jsp";
	  }
	
	@PostMapping("update")
	public String update(Project project) throws Exception {
		projectService.update(project);
		return "redirect:../employee/list";
	}
}

//Academy academy = academyService.get(userNo);
//Education education = educationService.get(userNo);
