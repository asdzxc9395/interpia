package interpia.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class Certificate implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private Employee employee;
	private int userNo;
	private int certificateNo;
	private String certificateName;
	private Date acquistionDate;
	List<Certificate> files;
	
	
	public Certificate() {}
	public Certificate(int userNo, String certificateName, Date acquistionDate) {
		this.userNo = userNo;
		this.certificateName = certificateName;
		this.acquistionDate = acquistionDate;
	}
	
	public Certificate(int certificateNo, int userNo, String certificateName, Date acquistionDate) {
		this(userNo, certificateName, acquistionDate);
		this.certificateNo = certificateNo;
	}
	
	@Override
	public String toString() {
		return "Certificate [employee=" + employee + ", certificateNo=" + certificateNo + ", certificateName="
				+ certificateName + ", acquistionDate=" + acquistionDate + "]";
	}
	
	public List<Certificate> getFiles() {
		return files;
	}

	public void setFiles(List<Certificate> files) {
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
