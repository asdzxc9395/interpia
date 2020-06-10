package interpia.domain;

import java.io.Serializable;
import java.sql.Date;

public class Project implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int projectNo;
	private int userNo;
	private String projectName;
	private Date startDate;
	private Date endDate;
	private String company;
	private String custmor;
	private String developmentField;
	private String role;
	private String model;
	private String language;
	private String os;
	private String dbms;
	private String tool;
	private String comunication;
	private String etc;
	
	@Override
	public String toString() {
		return "Project [projectNo=" + projectNo + ", userNo=" + userNo + ", projectName=" + projectName
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", company=" + company + ", custmor=" + custmor
				+ ", developmentField=" + developmentField + ", role=" + role + ", model=" + model + ", language="
				+ language + ", os=" + os + ", dbms=" + dbms + ", tool=" + tool + ", comunication=" + comunication
				+ ", etc=" + etc + "]";
	}
	public int getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
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
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getCustmor() {
		return custmor;
	}
	public void setCustmor(String custmor) {
		this.custmor = custmor;
	}
	public String getDevelopmentField() {
		return developmentField;
	}
	public void setDevelopmentField(String developmentField) {
		this.developmentField = developmentField;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	public String getDbms() {
		return dbms;
	}
	public void setDbms(String dbms) {
		this.dbms = dbms;
	}
	public String getTool() {
		return tool;
	}
	public void setTool(String tool) {
		this.tool = tool;
	}
	public String getComunication() {
		return comunication;
	}
	public void setComunication(String comunication) {
		this.comunication = comunication;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}

	
	
}
