package interpia.service;

import java.util.List;

import interpia.domain.Employee;

public interface EmployeeService {

	void add(Employee education) throws Exception;
	
	List<Employee> list() throws Exception;
	
	int delete(int no) throws Exception;
	
	int update(Employee education) throws Exception;
	
	Employee get(int no) throws Exception;
	
	List<Employee> search(String keyword) throws Exception;
}