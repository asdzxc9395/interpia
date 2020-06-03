package interpia.domain;

import java.io.Serializable;
import java.sql.Date;

public class Academy implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Employee employee;
	private int academyNo;
	private String academyName;
	private String educationInstitution;
	private Date startDate;
	private Date endDate;
	
	public Academy() {
	}
	
	public Academy(String academyName, String educationInstitution, Date startDate, Date endDate) {
	this.academyName = academyName;
	this.educationInstitution = educationInstitution;
	this.startDate = startDate;
	this.endDate = endDate;
	}
	public Academy(int academyNo, String academyName, String educationInstitution, Date startDate, Date endDate) {
	this(academyName, educationInstitution, startDate, endDate);
	this.academyNo = academyNo;
	}
	
	@Override
	public String toString() {
		return "Academy [employee=" + employee + ", academyNo=" + academyNo + ", academyName=" + academyName
				+ ", education_institution=" + educationInstitution + ", startDate=" + startDate + ", endDate="
				+ endDate + "]";
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public int getAcademyNo() {
		return academyNo;
	}
	public void setAcademyNo(int academyNo) {
		this.academyNo = academyNo;
	}
	public String getAcademyName() {
		return academyName;
	}
	public void setAcademyName(String academyName) {
		this.academyName = academyName;
	}
	public String getEducationInstitution() {
		return educationInstitution;
	}
	public void setEducationInstitution(String educationInstitution) {
		this.educationInstitution = educationInstitution;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	

	
	
	
	
	
}
