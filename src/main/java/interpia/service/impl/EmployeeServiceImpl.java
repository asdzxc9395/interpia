package interpia.service.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import interpia.dao.EmployeeDao;
import interpia.domain.Employee;
import interpia.service.EmployeeService;

@Component
public class EmployeeServiceImpl implements EmployeeService{
	
	EmployeeDao employeenDao;
	
	public EmployeeServiceImpl(EmployeeDao employeenDao) {
		this.employeenDao = employeenDao;
	}
	
	@Override
	public void add(Employee employee) throws Exception {
		employeenDao.insert(employee);
	}

	@Override
	public List<Employee> list() throws Exception {
		return employeenDao.findAll();
	}

	@Override
	public int delete(int no) throws Exception {
		return employeenDao.delete(no);
	}

	@Override
	public int update(Employee employee) throws Exception {
		return employeenDao.update(employee);
	}

	@Override
	public Employee get(int no) throws Exception {
		return employeenDao.findByNo(no);
	}
	
	@Override
	public List<Employee> search(String keyword) throws Exception {
		return employeenDao.findByKeyword(keyword);
	}
	
}
