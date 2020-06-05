package interpia.domain;

import java.io.Serializable;
import java.sql.Date;

public class Career implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Employee employee;
	private int careerNo;
	private int userNo;
	private String companyName;
	private String position;
	private Date joinDate;
	private Date leaveDate;
	private String chargePosition;
	
	@Override
	public String toString() {
		return "Career [employee=" + employee + ", careerNo=" + careerNo + ", userNo=" + userNo + ", companyName="
				+ companyName + ", position=" + position + ", joinDate=" + joinDate + ", leaveDate=" + leaveDate
				+ ", chargePosition=" + chargePosition + "]";
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public int getCareerNo() {
		return careerNo;
	}
	public void setCareerNo(int careerNo) {
		this.careerNo = careerNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public Date getLeaveDate() {
		return leaveDate;
	}
	public void setLeaveDate(Date leaveDate) {
		this.leaveDate = leaveDate;
	}
	public String getChargePosition() {
		return chargePosition;
	}
	public void setChargePosition(String chargePosition) {
		this.chargePosition = chargePosition;
	}
	
	
	
}
