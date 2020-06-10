package interpia.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class Certificate implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int certificateNo;
	private int userNo;
	private String certificateName1;
	private Date acquistionDate1;
	private String certificateName2;
	private Date acquistionDate2;
	private String certificateName3;
	private Date acquistionDate3;
	private String certificateName4;
	private Date acquistionDate4;
	private String techName1;
	private String proficiency1;
	private String techName2;
	private String proficiency2;
	private String techName3;
	private String proficiency3;
	private String techName4;
	private String proficiency4;
	
	
	@Override
	public String toString() {
		return "Certificate [certificateNo=" + certificateNo + ", userNo=" + userNo + ", certificateName1="
				+ certificateName1 + ", acquistionDate1=" + acquistionDate1 + ", certificateName2=" + certificateName2
				+ ", acquistionDate2=" + acquistionDate2 + ", certificateName3=" + certificateName3
				+ ", acquistionDate3=" + acquistionDate3 + ", certificateName4=" + certificateName4
				+ ", acquistionDate4=" + acquistionDate4 + ", techName1=" + techName1 + ", proficiency1=" + proficiency1
				+ ", techName2=" + techName2 + ", proficiency2=" + proficiency2 + ", techName3=" + techName3
				+ ", proficiency3=" + proficiency3 + ", techName4=" + techName4 + ", proficiency4=" + proficiency4
				+ "]";
	}
	public int getCertificateNo() {
		return certificateNo;
	}
	public void setCertificateNo(int certificateNo) {
		this.certificateNo = certificateNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getCertificateName1() {
		return certificateName1;
	}
	public void setCertificateName1(String certificateName1) {
		this.certificateName1 = certificateName1;
	}
	public Date getAcquistionDate1() {
		return acquistionDate1;
	}
	public void setAcquistionDate1(Date acquistionDate1) {
		this.acquistionDate1 = acquistionDate1;
	}
	public String getCertificateName2() {
		return certificateName2;
	}
	public void setCertificateName2(String certificateName2) {
		this.certificateName2 = certificateName2;
	}
	public Date getAcquistionDate2() {
		return acquistionDate2;
	}
	public void setAcquistionDate2(Date acquistionDate2) {
		this.acquistionDate2 = acquistionDate2;
	}
	public String getCertificateName3() {
		return certificateName3;
	}
	public void setCertificateName3(String certificateName3) {
		this.certificateName3 = certificateName3;
	}
	public Date getAcquistionDate3() {
		return acquistionDate3;
	}
	public void setAcquistionDate3(Date acquistionDate3) {
		this.acquistionDate3 = acquistionDate3;
	}
	public String getCertificateName4() {
		return certificateName4;
	}
	public void setCertificateName4(String certificateName4) {
		this.certificateName4 = certificateName4;
	}
	public Date getAcquistionDate4() {
		return acquistionDate4;
	}
	public void setAcquistionDate4(Date acquistionDate4) {
		this.acquistionDate4 = acquistionDate4;
	}
	public String getTechName1() {
		return techName1;
	}
	public void setTechName1(String techName1) {
		this.techName1 = techName1;
	}
	public String getProficiency1() {
		return proficiency1;
	}
	public void setProficiency1(String proficiency1) {
		this.proficiency1 = proficiency1;
	}
	public String getTechName2() {
		return techName2;
	}
	public void setTechName2(String techName2) {
		this.techName2 = techName2;
	}
	public String getProficiency2() {
		return proficiency2;
	}
	public void setProficiency2(String proficiency2) {
		this.proficiency2 = proficiency2;
	}
	public String getTechName3() {
		return techName3;
	}
	public void setTechName3(String techName3) {
		this.techName3 = techName3;
	}
	public String getProficiency3() {
		return proficiency3;
	}
	public void setProficiency3(String proficiency3) {
		this.proficiency3 = proficiency3;
	}
	public String getTechName4() {
		return techName4;
	}
	public void setTechName4(String techName4) {
		this.techName4 = techName4;
	}
	public String getProficiency4() {
		return proficiency4;
	}
	public void setProficiency4(String proficiency4) {
		this.proficiency4 = proficiency4;
	}
	
	
	
	

	
}
