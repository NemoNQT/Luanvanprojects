package com.luanvan.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.format.annotation.DateTimeFormat;
@Document(collection="account")
public class Account {
	@Id
	private String id;
	private String Hoten;
	private String DiachiHT;
	private String DiachiTT;
	private String SoCMND;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date NgaycapCMND = new Date();
	private String NoicapCMND;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date Ngaysinh = new Date();
	private String Sodt;
	private String Email;
	private String Gioitinh;
	private String Dantoc;
	private String Quoctich;
	private String username;
	private String password;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public String getHoten() {
		return Hoten;
	}

	public void setHoten(String hoten) {
		Hoten = hoten;
	}

	public String getDiachiHT() {
		return DiachiHT;
	}

	public void setDiachiHT(String diachiHT) {
		DiachiHT = diachiHT;
	}

	public String getDiachiTT() {
		return DiachiTT;
	}

	public Account(String id, String hoten, String diachiHT, String diachiTT, String soCMND, Date ngaycapCMND,
			String noicapCMND, Date ngaysinh, String sodt, String email, String gioitinh, String dantoc,
			String quoctich, String username, String password) {
		super();
		this.id = id;
		Hoten = hoten;
		DiachiHT = diachiHT;
		DiachiTT = diachiTT;
		SoCMND = soCMND;
		NgaycapCMND = ngaycapCMND;
		NoicapCMND = noicapCMND;
		Ngaysinh = ngaysinh;
		Sodt = sodt;
		Email = email;
		Gioitinh = gioitinh;
		Dantoc = dantoc;
		Quoctich = quoctich;
		this.username = username;
		this.password = password;
	}

	public void setDiachiTT(String diachiTT) {
		DiachiTT = diachiTT;
	}

	public String getSoCMND() {
		return SoCMND;
	}

	public void setSoCMND(String soCMND) {
		SoCMND = soCMND;
	}

	public Date getNgaycapCMND() {
		return NgaycapCMND;
	}

	public void setNgaycapCMND(Date ngaycapCMND) {
		NgaycapCMND = ngaycapCMND;
	}

	public String getNoicapCMND() {
		return NoicapCMND;
	}

	public void setNoicapCMND(String noicapCMND) {
		NoicapCMND = noicapCMND;
	}

	public Date getNgaysinh() {
		return Ngaysinh;
	}

	public void setNgaysinh(Date ngaysinh) {
		Ngaysinh = ngaysinh;
	}

	public String getSodt() {
		return Sodt;
	}

	public void setSodt(String sodt) {
		Sodt = sodt;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getGioitinh() {
		return Gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		Gioitinh = gioitinh;
	}

	public String getDantoc() {
		return Dantoc;
	}

	public void setDantoc(String dantoc) {
		Dantoc = dantoc;
	}

	public String getQuoctich() {
		return Quoctich;
	}

	public void setQuoctich(String quoctich) {
		Quoctich = quoctich;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Account() {
		id = UUID.randomUUID().toString();
	} 
	
	
}