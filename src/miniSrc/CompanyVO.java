package miniSrc;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

public class CompanyVO {

	String com_id, com_pw, com_name, represent, enroll_num
	, info, charger, char_phone, com_phone, com_address, 
	com_email, homepage, com_grade, found_day, com_proj, logo ;
	
	Integer com_Salary, work_Time, promise, com_Sum, com_Avg;
	//기업명으로 프로젝트에 관한 걸 가져옴
	/*HashMap<String, HashMap<String, ProjectVO>> com_proj1 = new HashMap<>();
	//프로젝트명으로 프로젝트 객체(프로젝트 정보)을 가져옴
	HashMap<String, ProjectVO> project = new HashMap<>();	*/
	
	public CompanyVO() {
		// TODO Auto-generated constructor stub
	}	
	
	public String getCom_proj() {
		return com_proj;
	}

	public CompanyVO(String com_id, String com_name) {
		super();
		this.com_id = com_id;
		this.com_name = com_name;
	}

	public String getCom_id() {
		return com_id;
	}

	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}

	public String getCom_pw() {
		return com_pw;
	}

	public void setCom_pw(String com_pw) {
		this.com_pw = com_pw;
	}

	public String getCom_name() {
		return com_name;
	}

	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}

	public String getRepresent() {
		return represent;
	}

	public void setRepresent(String represent) {
		this.represent = represent;
	}

	public String getEnroll_num() {
		return enroll_num;
	}

	public void setEnroll_num(String enroll_num) {
		this.enroll_num = enroll_num;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getCharger() {
		return charger;
	}

	public void setCharger(String charger) {
		this.charger = charger;
	}

	public String getChar_phone() {
		return char_phone;
	}

	public void setChar_phone(String char_phone) {
		this.char_phone = char_phone;
	}

	public String getCom_phone() {
		return com_phone;
	}

	public void setCom_phone(String com_phone) {
		this.com_phone = com_phone;
	}

	public String getCom_address() {
		return com_address;
	}

	public void setCom_address(String com_address) {
		this.com_address = com_address;
	}

	public String getCom_email() {
		return com_email;
	}

	public void setCom_email(String com_email) {
		this.com_email = com_email;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getCom_grade() {
		return com_grade;
	}

	public void setCom_grade(String com_grade) {
		this.com_grade = com_grade;
	}

	public String getFound_day() {
		return found_day;
	}

	public void setFound_day(String found_day) {
		this.found_day = found_day;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public Integer getCom_Salary() {
		return com_Salary;
	}

	public void setCom_Salary(Integer com_Salary) {
		this.com_Salary = com_Salary;
	}

	public Integer getWork_Time() {
		return work_Time;
	}

	public void setWork_Time(Integer work_Time) {
		this.work_Time = work_Time;
	}

	public Integer getPromise() {
		return promise;
	}

	public void setPromise(Integer promise) {
		this.promise = promise;
	}

	public Integer getCom_Sum() {
		return com_Sum;
	}

	public void setCom_Sum(Integer com_Sum) {
		this.com_Sum = com_Sum;
	}

	public Integer getCom_Avg() {
		return com_Avg;
	}

	public void setCom_Avg(Integer com_Avg) {
		this.com_Avg = com_Avg;
	}

	public void setCom_proj(String com_proj) {
		this.com_proj = com_proj;
	}

}
