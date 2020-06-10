package interpia.service;

import java.util.HashMap;
import java.util.List;

import org.apache.poi.xssf.streaming.SXSSFWorkbook;

import interpia.domain.Criteria;
import interpia.domain.Employee;

public interface EmployeeService {

	void add(Employee employee) throws Exception;
	
	List<Employee> list() throws Exception;
	
	void delete(int no) throws Exception;
	
	void checkDelete(Employee employee) throws Exception;
	
	int update(Employee employee) throws Exception;
	
	Employee get(int no) throws Exception;
	
	List<Employee> search(HashMap<String, Object> params) throws Exception;

	List<Employee> listPage(Criteria cri) throws Exception;
	
	public int getTotalCount(Criteria cri) throws Exception;

	public List<Employee> excelList() throws Exception;
	
	//리스트를 간단한 엑셀 워크북 객체로 생성
	public SXSSFWorkbook makeSimpleFruitExcelWorkbook(List<Employee> list) throws Exception;
	
	//생성한 엑셀 워크북을 컨트롤레에서 받게해줄 메소드
	public SXSSFWorkbook excelFileDownloadProcess(List<Employee> list) throws Exception;
	
}