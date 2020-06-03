package interpia.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Component;

import interpia.dao.EmployeeDao;
import interpia.domain.Criteria;
import interpia.domain.Employee;
import interpia.service.EmployeeService;

@Component
public class EmployeeServiceImpl implements EmployeeService{
	
	EmployeeDao employeeDao;
	
	public EmployeeServiceImpl(EmployeeDao employeenDao) {
		this.employeeDao = employeenDao;
	}
	
	@Override
	public void add(Employee employee) throws Exception {
		employeeDao.insert(employee);
	}

	@Override
	public List<Employee> list() throws Exception {
		return employeeDao.findAll();
	}

	@Override
	public int delete(int no) throws Exception {
		return employeeDao.delete(no);
	}
	
	@Override
	public void checkDelete(Employee employee) throws Exception {
		employeeDao.checkDelete(employee);
	}

	@Override
	public int update(Employee employee) throws Exception {
		return employeeDao.update(employee);
	}

	@Override
	public Employee get(int no) throws Exception {
		return employeeDao.findByNo(no);
	}
	
	@Override
	  public List<Employee> search(HashMap<String, Object> params) throws Exception {
	    return employeeDao.findByKeyword(params);
	  }

	@Override
	public List<Employee> listPage(Criteria cri) throws Exception {
		return employeeDao.listPage(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) throws Exception {
		return employeeDao.getTotalCount(cri);
	}
	
	
}
