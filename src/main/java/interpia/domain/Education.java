package interpia.domain;

import java.io.Serializable;
import java.sql.Date;

public class Education implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private int userNo;
	private String eudcation;
	private String major;
	private Date graduationYear;
	private String educationName;
	private Date startDate;
	private Date endDate;
	private String educationInstitution;
	
	
	@Override
	public String toString() {
		return "Certificate [userNo=" + userNo + ", eudcation=" + eudcation + ", major=" + major + ", graduationYear="
				+ graduationYear + ", educationName=" + educationName + ", startDate=" + startDate + ", endDate="
				+ endDate + ", educationInstitution=" + educationInstitution + "]";
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getEudcation() {
		return eudcation;
	}
	public void setEudcation(String eudcation) {
		this.eudcation = eudcation;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public Date getGraduationYear() {
		return graduationYear;
	}
	public void setGraduationYear(Date graduationYear) {
		this.graduationYear = graduationYear;
	}
	public String getEducationName() {
		return educationName;
	}
	public void setEducationName(String educationName) {
		this.educationName = educationName;
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
	public String getEducationInstitution() {
		return educationInstitution;
	}
	public void setEducationInstitution(String educationInstitution) {
		this.educationInstitution = educationInstitution;
	}
	
}
