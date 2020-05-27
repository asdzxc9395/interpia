package interpia.web;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import interpia.domain.Employee;
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
	  
	
	@GetMapping("list")
	public String list(Model model) throws Exception{
		model.addAttribute("list", employeeService.list());
		return "/WEB-INF/jsp/employee/list.jsp";
	};

	@GetMapping("delete")
	public String delete(int no, Model model) throws Exception{
		if (employeeService.delete(no) > 0) {
			return "/WEB-INF/jsp/employee/list.jsp";
		} else {
			throw new Exception("삭제할 게시물 번호가 유효하지 않습니다.");
		}
	}

	@PostMapping("add")
	public String add(Employee employee, MultipartFile imageFile) throws Exception {
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
	
	@GetMapping("search")
	public String search(String keyword, Model model) throws Exception {
	    model.addAttribute("list", employeeService.search(keyword));
	    return "/WEB-INF/jsp/employee/search.jsp";
	  }
	}
