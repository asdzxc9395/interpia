package interpia.domain;

import java.io.Serializable;
import java.sql.Date;

public class Education implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Employee employee;
	private int userNo;
	private int educationNo;
	private String hsName;
	private String hsMajor;
	private Date hsDate;
	private String cpName;
	private String cpMajor;
	private Date cpDate;
	private String tcName;
	private String tcMajor;
	private Date tcDate;
	private String colName;
	private String colMajor;
	private Date colDate;
	private String gsName;
	private String gsMajor;
	private Date gsDate;
	
	
	@Override
	public String toString() {
		return "Education [employee=" + employee + ", educationNo=" + educationNo + ", hsName=" + hsName + ", hsMajor="
				+ hsMajor + ", hsDate=" + hsDate + ", cpName=" + cpName + ", cpMajor=" + cpMajor + ", cpDate=" + cpDate
				+ ", tcName=" + tcName + ", tcMajor=" + tcMajor + ", tcDate=" + tcDate + ", colName=" + colName
				+ ", colMajor=" + colMajor + ", colDate=" + colDate + ", gsName=" + gsName + ", gsMajor=" + gsMajor
				+ ", gsDate=" + gsDate + "]";
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


	public int getEudcationNo() {
		return educationNo;
	}


	public void setEudcationNo(int educationNo) {
		this.educationNo = educationNo;
	}


	public String getHsName() {
		return hsName;
	}


	public void setHsName(String hsName) {
		this.hsName = hsName;
	}


	public String getHsMajor() {
		return hsMajor;
	}


	public void setHsMajor(String hsMajor) {
		this.hsMajor = hsMajor;
	}


	public Date getHsDate() {
		return hsDate;
	}


	public void setHsDate(Date hsDate) {
		this.hsDate = hsDate;
	}


	public String getCpName() {
		return cpName;
	}


	public void setCpName(String cpName) {
		this.cpName = cpName;
	}


	public String getCpMajor() {
		return cpMajor;
	}


	public void setCpMajor(String cpMajor) {
		this.cpMajor = cpMajor;
	}


	public Date getCpDate() {
		return cpDate;
	}


	public void setCpDate(Date cpDate) {
		this.cpDate = cpDate;
	}


	public String getTcName() {
		return tcName;
	}


	public void setTcName(String tcName) {
		this.tcName = tcName;
	}


	public String getTcMajor() {
		return tcMajor;
	}


	public void setTcMajor(String tcMajor) {
		this.tcMajor = tcMajor;
	}


	public Date getTcDate() {
		return tcDate;
	}


	public void setTcDate(Date tcDate) {
		this.tcDate = tcDate;
	}


	public String getColName() {
		return colName;
	}


	public void setColName(String colName) {
		this.colName = colName;
	}


	public String getColMajor() {
		return colMajor;
	}


	public void setColMajor(String colMajor) {
		this.colMajor = colMajor;
	}


	public Date getColDate() {
		return colDate;
	}


	public void setColDate(Date colDate) {
		this.colDate = colDate;
	}


	public String getGsName() {
		return gsName;
	}


	public void setGsName(String gsName) {
		this.gsName = gsName;
	}


	public String getGsMajor() {
		return gsMajor;
	}


	public void setGsMajor(String gsMajor) {
		this.gsMajor = gsMajor;
	}


	public Date getGsDate() {
		return gsDate;
	}


	public void setGsDate(Date gsDate) {
		this.gsDate = gsDate;
	}
	

	
	
}
