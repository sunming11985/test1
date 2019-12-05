package cn.sm1234.domain;

import cn.afterturn.easypoi.excel.annotation.Excel;

public class Customer {

	@Excel(name = "编号", orderNum = "0")
	private Integer id;
	@Excel(name = "姓名", orderNum = "1")
	private String name;
	@Excel(name = "性别", orderNum = "2")
	private String gender;
	@Excel(name = "电话", orderNum = "3")
	private String telephone;
	@Excel(name = "地址", orderNum = "4")
	private String address;
	
	public Customer() {
		super();
	}
	public Customer(Integer id, String name, String gender, String telephone, String address) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.telephone = telephone;
		this.address = address;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", gender=" + gender
				+ ", telephone=" + telephone + ", address=" + address + "]";
	}
	
}
