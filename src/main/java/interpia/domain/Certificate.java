package interpia.domain;

import java.io.Serializable;
import java.sql.Date;

public class Certificate implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Employee employee;
	private int certificateNo;
	private String certificateName;
	private Date acquistionDate;
	
	
	public Certificate() {}
	
	public Certificate(String certificateName, Date acquistionDate) {
		
	}
	
	@Override
	public String toString() {
		return "Certificate [employee=" + employee + ", certificateNo=" + certificateNo + ", certificateName="
				+ certificateName + ", acquistionDate=" + acquistionDate + "]";
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public int getCertificateNo() {
		return certificateNo;
	}
	public void setCertificateNo(int certificateNo) {
		this.certificateNo = certificateNo;
	}
	public String getCertificateName() {
		return certificateName;
	}
	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}
	public Date getAcquistionDate() {
		return acquistionDate;
	}
	public void setAcquistionDate(Date acquistionDate) {
		this.acquistionDate = acquistionDate;
	}

	
}
