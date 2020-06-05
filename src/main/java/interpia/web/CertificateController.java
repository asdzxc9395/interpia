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

import interpia.domain.Certificate;
import interpia.domain.Employee;
import interpia.domain.Technology;
import interpia.service.CertificateService;
import interpia.service.EmployeeService;
import interpia.service.TechnologyService;

@Controller
@RequestMapping("/certificate")
public class CertificateController {

	@Autowired
	ServletContext servletContext;

	@Autowired
	EmployeeService employeeService;

	@Autowired
	CertificateService certificateService;

	@Autowired
	TechnologyService technologyService;

	@GetMapping("form")
	  public String form() throws Exception {
		return "/WEB-INF/jsp/certificate/form.jsp";
	  }

	@PostMapping("add")
	public String add(Model model,
			int userNo,
			String korName,
			String residentNo) throws Exception {
		// 회원정보 얻기
		Employee employee = employeeService.get(userNo);

		// 교육정보 얻기
		Certificate certificate = new Certificate();
		certificate.setEmployee(employee);//리스트로 입력한것도 되나 함 볼게요

		Technology technology = new Technology();
		technology.setEmployee(employee);

		// 입력
		certificateService.add(certificate);
		technologyService.add(technology);
		return "redirect:list?userNo=" + userNo;
	}
	
	@GetMapping("detail")
	  public String detail(int no, Model model) throws Exception {
		Employee employee = employeeService.get(no);
		model.addAttribute("employee", employee);
	    model.addAttribute("technology", technologyService.get(no));
	    model.addAttribute("certificate", certificateService.get(no));
	    System.out.println(certificateService.get(no));
		return "/WEB-INF/jsp/certificate/detail.jsp";
	  }
	
	@PostMapping("update")
	public String update(Model model,
			int userNo) throws Exception {

		// 교육정보 얻기
		Certificate certificate = certificateService.get(userNo);
		Technology technology = technologyService.get(userNo);
		
//		List<Certificate> cFiles = new ArrayList<>();
//		List<Technology> tFiles = new ArrayList<>();
//		
//		certificate.setFiles(cFiles);
//		technology.setFiles(tFiles);

		System.out.println(certificate);
		System.out.println(technology);
		// 입력
		certificateService.update(certificate);
		technologyService.update(technology);
		return "redirect:list?userNo=" + userNo;
	}
}
