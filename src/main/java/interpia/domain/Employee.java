package interpia.domain;

import java.io.Serializable;
import java.sql.Date;

public class Employee implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int userNo;
	private String korName;
	private String engName;
	private String chiName;
	private String residentNo;
	private String image;
	private Date birthDate;
	private int sex;
	private int martialStatus;
	private int year;
	private int paymentType;
	private int typeJob;
	private int employmentType;
	private String adress;
	private int number;
	private String email;
	private String techGrade;
	private String alcohol;
	
	
	@Override
	public String toString() {
		return "Certificate [userNo=" + userNo + ", korName=" + korName + ", engName=" + engName + ", chiName="
				+ chiName + ", residentNo=" + residentNo + ", image=" + image + ", birthDate=" + birthDate + ", sex="
				+ sex + ", martialStatus=" + martialStatus + ", year=" + year + ", paymentType=" + paymentType
				+ ", typeJob=" + typeJob + ", employmentType=" + employmentType + ", adress=" + adress + ", number="
				+ number + ", email=" + email + ", techGrade=" + techGrade + ", alcohol=" + alcohol + "]";
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getKorName() {
		return korName;
	}
	public void setKorName(String korName) {
		this.korName = korName;
	}
	public String getEngName() {
		return engName;
	}
	public void setEngName(String engName) {
		this.engName = engName;
	}
	public String getChiName() {
		return chiName;
	}
	public void setChiName(String chiName) {
		this.chiName = chiName;
	}
	public String getResidentNo() {
		return residentNo;
	}
	public void setResidentNo(String residentNo) {
		this.residentNo = residentNo;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getMartialStatus() {
		return martialStatus;
	}
	public void setMartialStatus(int martialStatus) {
		this.martialStatus = martialStatus;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(int paymentType) {
		this.paymentType = paymentType;
	}
	public int getTypeJob() {
		return typeJob;
	}
	public void setTypeJob(int typeJob) {
		this.typeJob = typeJob;
	}
	public int getEmploymentType() {
		return employmentType;
	}
	public void setEmploymentType(int employmentType) {
		this.employmentType = employmentType;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTechGrade() {
		return techGrade;
	}
	public void setTechGrade(String techGrade) {
		this.techGrade = techGrade;
	}
	public String getAlcohol() {
		return alcohol;
	}
	public void setAlcohol(String alcohol) {
		this.alcohol = alcohol;
	}
}
