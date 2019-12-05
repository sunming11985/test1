package cn.sm1234.domain;

import cn.afterturn.easypoi.excel.annotation.Excel;

public class Students{

//	@Excel(name = "编号", orderNum = "0")
	private Integer stu_id;
//	@Excel(name = "姓名", orderNum = "1")
	private String stu_name;
	//	@Excel(name = "性别", orderNum = "2")
	private String sex;
	//	@Excel(name = "电话", orderNum = "3")
	private String mtel;
	//	@Excel(name = "QQ号", orderNum = "4")
	private String qq;
	//	@Excel(name = "地址", orderNum = "5")
	private String address;
	//	@Excel(name = "生日", orderNum = "6")
	private String birthday;
	//	@Excel(name = "状态", orderNum = "7")
	private String stu_status;
	public Integer getStu_id() {
		return stu_id;
	}
	public void setStu_id(Integer stu_id) {
		this.stu_id = stu_id;
	}
	public String getStu_name() {
		return stu_name;
	}
	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getStu_status() {
		return stu_status;
	}
	public void setStu_status(String stu_status) {
		this.stu_status = stu_status;
	}
	@Override
	public String toString() {
		return "Students [stu_id=" + stu_id + ", stu_name=" + stu_name + ", sex=" + sex + ", mtel=" + mtel + ", qq="
				+ qq + ", address=" + address + ", birthday=" + birthday + ", stu_status=" + stu_status + "]";
	}
	
	
	

}
