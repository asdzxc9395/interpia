package interpia.web;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import interpia.domain.Criteria;
import interpia.domain.Employee;
import interpia.domain.PageMaker;
import interpia.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@Autowired
	ServletContext servletContext;


	@GetMapping("form")
	public String form() throws Exception {
		return "/WEB-INF/jsp/employee/form.jsp";
	}

	@GetMapping("delete")
	public String delete(int no, Model model) throws Exception{
		if (employeeService.delete(no) > 0) {
			return "/WEB-INF/jsp/employee/list.jsp";
		} else {
			throw new Exception("삭제할 게시물 번호가 유효하지 않습니다.");
		}
	}
	@ResponseBody
	@RequestMapping(value = "/checkDelete", method = RequestMethod.POST)
	public int checkDelete(@RequestParam(value = "chBox[]") List<String> chArr, 
			Employee employee) throws Exception{
		int result = 1;
		int userNum = 0;
		for(String i : chArr) {  
			System.out.println(chArr);
			userNum = Integer.parseInt(i);
			employee.setUserNo(userNum);
			employeeService.checkDelete(employee);
		}   
		return result;
	}

	@GetMapping("list")
	public String list(Criteria cri, Model model) throws Exception{
				List<Employee> employee = employeeService.listPage(cri);
				model.addAttribute("list",employee);
				PageMaker pageMaker = new PageMaker(cri);
				int totalCount = employeeService.getTotalCount(cri);
				pageMaker.setTotalCount(totalCount);
				model.addAttribute("pageMaker", pageMaker);
				
				return "/WEB-INF/jsp/employee/list.jsp";
	}


	@PostMapping("add")
	public String add(Employee employee, MultipartFile imageFile) throws Exception {
		System.out.println("===>"+employee);
		if (imageFile.getSize() > 0) {
			String dirPath = servletContext.getRealPath("/upload/employee");
			String filename = UUID.randomUUID().toString();
			imageFile.transferTo(new File(dirPath + "/" + filename));
			employee.setImage(filename);
		}
		employeeService.add(employee);
		return "redirect:list";
	}

	@GetMapping("detail")
	public String updateForm(int no, Model model) throws Exception {
		model.addAttribute("employee", employeeService.get(no));
		return "/WEB-INF/jsp/employee/detail.jsp";
	}

	@PostMapping("update")
	public String update(Employee employee, MultipartFile imageFile) throws Exception {
		if (imageFile.getSize() > 0) {
			System.out.println("ㅡㅡㅡㅡㅡㅡㅡ");
			String dirPath = servletContext.getRealPath("/upload/employee");
			String filename = UUID.randomUUID().toString();
			System.out.println(filename + "\n" + dirPath);
			imageFile.transferTo(new File(dirPath + "/" + filename));
			employee.setImage(filename);
		}
		if (employeeService.update(employee) > 0) {
			return "redirect:list";
		} else {
			throw new Exception("변경할 게시물 번호가 유효하지 않습니다.");
		}
	}

}

















