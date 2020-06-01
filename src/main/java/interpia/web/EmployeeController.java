package interpia.web;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import org.springframework.web.servlet.ModelAndView;

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
	  
	
		/*
		 * @GetMapping("list") public String list(Model model) throws Exception{
		 * model.addAttribute("list", employeeService.list()); return
		 * "/WEB-INF/jsp/employee/list.jsp"; };
		 */

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
		System.out.println(chArr);
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

	@RequestMapping(value="/list", method = RequestMethod.GET)
	public ModelAndView pageList(Criteria cri, Model model, ModelAndView mav, Employee employee) throws Exception {
		employee = null;
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(employeeService.countList());
		
		List<Map<String, Object>> list = employeeService.pageList(cri);
		
		mav.addObject("list", list);
		mav.addObject("pageMaker", pageMaker);
		
		mav.setViewName("/WEB-INF/jsp/employee/list.jsp");
		return mav;
	}
	
	 @GetMapping("search")
	  public void search(Employee employee, Model model) throws Exception {
	    HashMap<String, Object> map = new HashMap<>();

	    if (employee.getKorName().length() > 0) {
	      map.put("title", employee.getKorName());
	    }

	    if (employee.getSex() < 2) {
	      map.put("sex", employee.getSex());
	    }

	    if (employee.getTechGrade().length() > 0) {
	      map.put("dayHours", employee.getTechGrade());
	    }

	    model.addAttribute("list", employeeService.search(map));
	  }
}
	
















