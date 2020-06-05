package interpia.domain;

import java.io.Serializable;
import java.sql.Date;

public class Academy implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Employee employee;
	private int academyNo;
	private int userNo;
	private String academyName1;
	private String educationInstitution1;
	private Date startDate1;
	private Date endDate1;
	private String academyName2;
	private String educationInstitution2;
	private Date startDate2;
	private Date endDate2;
	private String academyName3;
	private String educationInstitution3;
	private Date startDate3;
	private Date endDate3;
	
	
	@Override
	public String toString() {
		return "Academy [employee=" + employee + ", academyNo=" + academyNo + ", userNo=" + userNo + ", academyName1="
				+ academyName1 + ", educationInstitution1=" + educationInstitution1 + ", startDate1=" + startDate1
				+ ", endDate1=" + endDate1 + ", academyName2=" + academyName2 + ", educationInstitution2="
				+ educationInstitution2 + ", startDate2=" + startDate2 + ", endDate2=" + endDate2 + ", academyName3="
				+ academyName3 + ", educationInstitution3=" + educationInstitution3 + ", startDate3=" + startDate3
				+ ", endDate3=" + endDate3 + "]";
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
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getAcademyName1() {
		return academyName1;
	}
	public void setAcademyName1(String academyName1) {
		this.academyName1 = academyName1;
	}
	public String getEducationInstitution1() {
		return educationInstitution1;
	}
	public void setEducationInstitution1(String educationInstitution1) {
		this.educationInstitution1 = educationInstitution1;
	}
	public Date getStartDate1() {
		return startDate1;
	}
	public void setStartDate1(Date startDate1) {
		this.startDate1 = startDate1;
	}
	public Date getEndDate1() {
		return endDate1;
	}
	public void setEndDate1(Date endDate1) {
		this.endDate1 = endDate1;
	}
	public String getAcademyName2() {
		return academyName2;
	}
	public void setAcademyName2(String academyName2) {
		this.academyName2 = academyName2;
	}
	public String getEducationInstitution2() {
		return educationInstitution2;
	}
	public void setEducationInstitution2(String educationInstitution2) {
		this.educationInstitution2 = educationInstitution2;
	}
	public Date getStartDate2() {
		return startDate2;
	}
	public void setStartDate2(Date startDate2) {
		this.startDate2 = startDate2;
	}
	public Date getEndDate2() {
		return endDate2;
	}
	public void setEndDate2(Date endDate2) {
		this.endDate2 = endDate2;
	}
	public String getAcademyName3() {
		return academyName3;
	}
	public void setAcademyName3(String academyName3) {
		this.academyName3 = academyName3;
	}
	public String getEducationInstitution3() {
		return educationInstitution3;
	}
	public void setEducationInstitution3(String educationInstitution3) {
		this.educationInstitution3 = educationInstitution3;
	}
	public Date getStartDate3() {
		return startDate3;
	}
	public void setStartDate3(Date startDate3) {
		this.startDate3 = startDate3;
	}
	public Date getEndDate3() {
		return endDate3;
	}
	public void setEndDate3(Date endDate3) {
		this.endDate3 = endDate3;
	}
	

	
	
	
	
	
	
}
