package com.luanvan.model;

import java.util.UUID;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Loaihoso {

	@Id
	private String id;
	private String MaLHS;
	private String TenLHS;
	private String TrangthaiLHS;
	private String Tuychon;
	private String Motaform;
	private String ChuyennganhLHS;
	private String datacn;

	public Loaihoso() {
		id = UUID.randomUUID().toString();
	}

	public Loaihoso(String id, String maLHS, String tenLHS, String trangthaiLHS, String tuychon, String motaform,
			String chuyennganhLHS, String datacn) {
		super();
		this.id = id;
		MaLHS = maLHS;
		TenLHS = tenLHS;
		TrangthaiLHS = trangthaiLHS;
		Tuychon = tuychon;
		Motaform = motaform;
		ChuyennganhLHS = chuyennganhLHS;
		this.datacn = datacn;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMaLHS() {
		return MaLHS;
	}

	public void setMaLHS(String maLHS) {
		MaLHS = maLHS;
	}

	public String getTenLHS() {
		return TenLHS;
	}

	public void setTenLHS(String tenLHS) {
		TenLHS = tenLHS;
	}

	public String getTrangthaiLHS() {
		return TrangthaiLHS;
	}

	public void setTrangthaiLHS(String trangthaiLHS) {
		TrangthaiLHS = trangthaiLHS;
	}

	public String getTuychon() {
		return Tuychon;
	}

	public void setTuychon(String tuychon) {
		Tuychon = tuychon;
	}

	public String getMotaform() {
		return Motaform;
	}

	public void setMotaform(String motaform) {
		Motaform = motaform;
	}

	public String getChuyennganhLHS() {
		return ChuyennganhLHS;
	}

	public void setChuyennganhLHS(String chuyennganhLHS) {
		ChuyennganhLHS = chuyennganhLHS;
	}

	@Override
	public String toString() {
		return "Loaihoso [id=" + id + ", MaLHS=" + MaLHS + ", TenLHS=" + TenLHS + ", TrangthaiLHS=" + TrangthaiLHS
				+ ", Tuychon=" + Tuychon + ", Motaform=" + Motaform + ", ChuyennganhLHS=" + ChuyennganhLHS + ", datacn="
				+ datacn + "]";
	}

	public String getDatacn() {
		return datacn;
	}

	public void setDatacn(String datacn) {
		this.datacn = datacn;
	}

	
}
