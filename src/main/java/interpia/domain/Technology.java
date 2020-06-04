package interpia.domain;

import java.io.Serializable;
import java.sql.Date;

public class Technology implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Employee employee;
	private int techNo;
	private String techName;
	private int proficiency;
	
	@Override
	public String toString() {
		return "Technology [employee=" + employee + ", techNo=" + techNo + ", techName=" + techName + ", proficiency="
				+ proficiency + "]";
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
