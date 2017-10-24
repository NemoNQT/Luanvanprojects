package com.luanvan.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Form {

	@Id
	private String id;
	private String tenform;
	private String moRong;
	private String maHS;
	private Date ngayCapNhat;
	private Date ngayTao;
//	private List<Field> fields;
	
	public Form() {
		id = UUID.randomUUID().toString();
//		fields = new ArrayList<Field>();
//		fields.add(new Field(1, "String"));
//		fields.add(new Field(1, "Boolean"));
	}
	@Override
	public String toString() {
		return "Form [id=" + id + ", tenform=" + tenform + ", maHS=" + maHS + ", morong=" + moRong + ", ngayCapNhat="
				+ ngayCapNhat + ", ngayTao=" + ngayTao + "]";
	}


	public Form(String id, String tenform, String maHS, String morong, Date ngayCapNhat, Date ngayTao
			) {
		super();
		this.id = id;
		this.tenform = tenform;
		this.maHS = maHS;
		this.moRong = morong;
		this.ngayCapNhat = ngayCapNhat;
		this.ngayTao = ngayTao;
//		this.fields = fields;
	}

	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTenform() {
		return tenform;
	}

	public void setTenform(String tenform) {
		this.tenform = tenform;
	}

	public String getMaHS() {
		return maHS;
	}

	public void setMaHS(String maHS) {
		this.maHS = maHS;
	}

	public String getMorong() {
		return moRong;
	}

	public void setMorong(String morong) {
		this.moRong = morong;
	}

	public Date getNgayCapNhat() {
		return ngayCapNhat;
	}

	public void setNgayCapNhat(Date ngayCapNhat) {
		this.ngayCapNhat = ngayCapNhat;
	}

	public Date getNgayTao() {
		return ngayTao;
	}

	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}

//	public List<Field> getFields() {
//		return fields;
//	}
//
//	public void setFields(List<Field> fields) {
//		this.fields = fields;
//	}

	
}
