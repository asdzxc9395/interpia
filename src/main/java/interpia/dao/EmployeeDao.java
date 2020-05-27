package interpia.dao;

import java.util.List;

import interpia.domain.Employee;

public interface EmployeeDao {
	public int insert(Employee Employee) throws Exception;
	
	public int update(Employee Employee) throws Exception;
	
	public int delete(int no) throws Exception;
	
	public List<Employee> findAll() throws Exception;
	
	public Employee findByNo(int no) throws Exception;
	
	public List<Employee> findByKeyword(String keyword) throws Exception;
}
