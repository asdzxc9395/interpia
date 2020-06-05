package interpia.domain;

import java.io.Serializable;
import java.util.List;

public class Technology implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Employee employee;
	private int userNo;
	private int techNo;
	private String techName;
	private int proficiency;
	List<Technology> files;
	
	public Technology() {
	}
	public Technology(int userNo, String techName, int proficiency) {
	this.userNo = userNo;
	this.techName = techName;
	this.proficiency = proficiency;
	}
	public Technology(int techNo, int userNo, String techName, int proficiency) {
	this(userNo, techName, proficiency);
	this.techNo= techNo;
	}
	
	@Override
	public String toString() {
		return "Technology [employee=" + employee + ", techNo=" + techNo + ", techName=" + techName + ", proficiency="
				+ proficiency + "]";
	}
	
	public List<Technology> getFiles() {
		return files;
	}

	public void setFiles(List<Technology> files) {
		this.files = files;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public int getTechNo() {
		return techNo;
	}

	public void setTechNo(int techNo) {
		this.techNo = techNo;
	}

	public String getTechName() {
		return techName;
	}

	public void setTechName(String techName) {
		this.techName = techName;
	}

	public int getProficiency() {
		return proficiency;
	}

	public void setProficiency(int proficiency) {
		this.proficiency = proficiency;
	}
	
}
