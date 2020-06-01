package interpia.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import interpia.domain.Criteria;
import interpia.domain.Employee;

public interface EmployeeService {

	void add(Employee employee) throws Exception;
	
	List<Employee> list() throws Exception;
	
	int delete(int no) throws Exception;
	
	void checkDelete(Employee employee) throws Exception;
	
	int update(Employee employee) throws Exception;
	
	Employee get(int no) throws Exception;
	
	List<Employee> search(HashMap<String, Object> params) throws Exception;

	List<Map<String, Object>> pageList(Criteria cri) throws Exception;
	
	public int countList() throws Exception;
}