package interpia.domain;

import java.io.Serializable;
import java.sql.Date;

public class Working implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int workingNo;
	private int userNo;
	private String projectName;
	private String workPlace;
	private Date startDate;
	private Date endDate;
	private int profit;
	private Date paymentDueDate; // 결제예정일
	private Date paymentDate;  // 결제일
	
	
	
	public int getWorkingNo() {
		return workingNo;
	}
	public void setWorkingNo(int workingNo) {
		this.workingNo = workingNo;
	}
	@Override
	public String toString() {
		return "Working [workingNo=" + workingNo + ", userNo=" + userNo + ", projectName=" + projectName
				+ ", workPlace=" + workPlace + ", startDate=" + startDate + ", endDate=" + endDate + ", profit="
				+ profit + ", paymentDueDate=" + paymentDueDate + ", paymentDate=" + paymentDate + "]";
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getWorkPlace() {
		return workPlace;
	}
	public void setWorkPlace(String workPlace) {
		this.workPlace = workPlace;
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
	public int getProfit() {
		return profit;
	}
	public void setProfit(int profit) {
		this.profit = profit;
	}
	public Date getPaymentDueDate() {
		return paymentDueDate;
	}
	public void setPaymentDueDate(Date paymentDueDate) {
		this.paymentDueDate = paymentDueDate;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
	
	
	
}
