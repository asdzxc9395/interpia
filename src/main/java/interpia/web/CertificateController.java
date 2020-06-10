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

import interpia.domain.Certificate;
import interpia.domain.Education;
import interpia.domain.Employee;
import interpia.service.CertificateService;
import interpia.service.EmployeeService;

@Controller
@RequestMapping("/certificate")
public class CertificateController {

	@Autowired
	ServletContext servletContext;

	@Autowired
	EmployeeService employeeService;

	@Autowired
	CertificateService certificateService;


	@GetMapping("form")
	public String form(Employee employee, Model model, int no) throws Exception {
		model.addAttribute("employee", employeeService.get(no));
		return "/WEB-INF/jsp/certificate/form.jsp";
	}

	@RequestMapping(value ="/add", method = RequestMethod.POST)
	public String add(Certificate certificate,
			HttpServletRequest req) throws Exception {
		
		HttpSession session = req.getSession();
		int userNo = (int) session.getAttribute("userNo");	
		// 입력
		certificate.setUserNo(userNo);
		certificateService.add(certificate);


		return "redirect:../project/form?no="+ certificate.getUserNo();
	}
	@GetMapping("detail")
	public String detail(int no, Model model) throws Exception {
		Employee employee = employeeService.get(no);
		model.addAttribute("employee", employee);
		model.addAttribute("certificate", certificateService.get(no));
		System.out.println(certificateService.get(no));
		return "/WEB-INF/jsp/certificate/detail.jsp";
	}

	@PostMapping("update")
	public String update(Certificate certificate, int userNo) throws Exception {
		// 교육정보 얻기
		certificateService.update(certificate);
		return "redirect:../employee/list";
	}
}
