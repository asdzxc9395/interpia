package interpia.dao;

import java.util.List;
import java.util.Map;

import interpia.domain.Criteria;
import interpia.domain.Employee;

public interface EmployeeDao {
	public int insert(Employee employee) throws Exception;
	
	public int update(Employee employee) throws Exception;
	
	public int delete(int no) throws Exception;
	
	public void checkDelete(Employee employee) throws Exception;
	
	public List<Employee> findAll() throws Exception;
	
	public Employee findByNo(int no) throws Exception;
	
	List<Employee> findByKeyword(Map<String, Object> params) throws Exception;

	List<Employee> listPage(Criteria cri) throws Exception;
	
	public int getTotalCount(Criteria cri) throws Exception;
	
}
