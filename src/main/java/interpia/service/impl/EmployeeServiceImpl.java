package interpia.service.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.stereotype.Component;

import interpia.dao.CareerDao;
import interpia.dao.CertificateDao;
import interpia.dao.EducationDao;
import interpia.dao.EmployeeDao;
import interpia.dao.ProjectDao;
import interpia.dao.WorkingDao;
import interpia.domain.Criteria;
import interpia.domain.Employee;
import interpia.service.EmployeeService;

@Component
public class EmployeeServiceImpl implements EmployeeService{
	
	EmployeeDao employeeDao;
	EducationDao educationDao;
	CertificateDao certificateDao;
	ProjectDao projectDao;
	WorkingDao workingDao;
	CareerDao careerDao;
	
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
	public void delete(int no) throws Exception {
		careerDao.delete(no);
		workingDao.delete(no);
		projectDao.delete(no);
		certificateDao.delete(no);
		educationDao.delete(no);
		 employeeDao.delete(no);
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
	
	@Override
	public List<Employee> excelList() throws Exception {
		return employeeDao.findAll();
	}
	
	@Override
	public SXSSFWorkbook makeSimpleFruitExcelWorkbook(List<Employee> list) throws Exception {
SXSSFWorkbook workbook = new SXSSFWorkbook();
        
        // 시트 생성
        SXSSFSheet sheet = workbook.createSheet("과일표");
        
        //시트 열 너비 설정
        sheet.setColumnWidth(0, 1500);
        sheet.setColumnWidth(0, 3000);
        sheet.setColumnWidth(0, 3000);
        sheet.setColumnWidth(0, 1500);
        
        // 헤더 행 생
        Row headerRow = sheet.createRow(0);
        // 해당 행의 첫번째 열 셀 생성
        Cell headerCell = headerRow.createCell(0);
        headerCell.setCellValue("번호");
        // 해당 행의 두번째 열 셀 생성
        headerCell = headerRow.createCell(1);
        headerCell.setCellValue("과일이름");
        // 해당 행의 세번째 열 셀 생성
        headerCell = headerRow.createCell(2);
        headerCell.setCellValue("가격");
        // 해당 행의 네번째 열 셀 생성
        headerCell = headerRow.createCell(3);
        headerCell.setCellValue("수량");
        
        // 과일표 내용 행 및 셀 생성
        Row bodyRow = null;
        Cell bodyCell = null;
        for(int i=0; i<list.size(); i++) {
            Employee employee = list.get(i);
            
            // 행 생성
            bodyRow = sheet.createRow(i+1);
            // 데이터 번호 표시
            bodyCell = bodyRow.createCell(0);
            bodyCell.setCellValue(i + 1);
            // 데이터 이름 표시
            bodyCell = bodyRow.createCell(1);
            bodyCell.setCellValue(employee.getName());
            // 데이터 가격 표시
            bodyCell = bodyRow.createCell(2);
            bodyCell.setCellValue(employee.getPrice());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(3);
            bodyCell.setCellValue(employee.getQuantity());
        }
        
        return workbook;
	}
	
	@Override
	public SXSSFWorkbook excelFileDownloadProcess(List<Employee> list) throws Exception {
		return this.makeSimpleFruitExcelWorkbook(list);
	}
	
}
