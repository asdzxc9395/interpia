package interpia.web;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

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
	public String form(Employee employee,
			 Model model, int no) throws Exception {
		model.addAttribute("employee", employeeService.get(no));
		return "/WEB-INF/jsp/career/form.jsp";
	}

	@RequestMapping(value ="/add", method = RequestMethod.POST)
	public String add(Career career,
			String[] companyName,Date[] joinDate,
			Date[] leaveDate, String[] chargePosition, String[] position,
			HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		int userNo = (int) session.getAttribute("userNo");
		career.setUserNo(userNo);
		System.out.println(career);
		System.out.println("userNo밖혔는지==>" + career);
	        for (int i = 0; i < companyName.length; i++) {
	        	career.setCompanyName(companyName[i]);
	        	career.setChargePosition(chargePosition[i]);
	        	career.setPosition(position[i]);
	        	career.setJoinDate(joinDate[i]);
	        	career.setLeaveDate(leaveDate[i]);
	        	career.setLeaveDate(leaveDate[i]);
	        	careerService.add(career);
	        	System.out.println(career);
	        }
		return "redirect:../working/form?no="+ career.getUserNo();
	}
	
	@GetMapping("detail")
	  public String detail(int no, Model model) throws Exception {
		model.addAttribute("employee", employeeService.get(no));
	    model.addAttribute("career", careerService.list(no));
	    return "/WEB-INF/jsp/career/detail.jsp";
	  }
	
	@PostMapping("update")
	public String update(Career career,  Integer[] careerNo,
			String[] companyName,Date[] joinDate,
			Date[] leaveDate, String[] chargePosition, String[] position,
			HttpServletRequest req
			) throws Exception {
		System.out.println(career.getUserNo());
		
		List<Career> cList = new ArrayList<>();
		System.out.println(cList);
        for (int i = 0; i < companyName.length; i++) {
        	career.setUserNo(career.getUserNo());
        	career.setCompanyName(companyName[i]);
        	career.setChargePosition(chargePosition[i]);
        	career.setPosition(position[i]);
        	career.setJoinDate(joinDate[i]);
        	career.setLeaveDate(leaveDate[i]);
        	cList.add(career);
        }
        System.out.println(cList);
		careerService.update(cList);
		return "redirect:../employee/list";
	}
}

//Academy academy = academyService.get(userNo);
//Education education = educationService.get(userNo);
