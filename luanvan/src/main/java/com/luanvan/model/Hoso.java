package com.luanvan.model;

import java.util.UUID;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Hoso {

	@Id
	private String id;
	private String MaHS;
	private String LoaiHS;
	private String SubjectName;
	private String SoCMND;
	private String TrangthaiHS;
	private String ChuyennganhHS;
	
	@DBRef
	private Loaihoso loaihoso;
	
	public Hoso() {
		id = UUID.randomUUID().toString();
	}
	
	public Hoso(String id, String maHS, String loaiHS, String subjectName, String soCMND, String trangthaiHS,
			String chuyennganhHS, Loaihoso loaihoso) {
		super();
		this.id = id;
		MaHS = maHS;
		LoaiHS = loaiHS;
		SubjectName = subjectName;
		SoCMND = soCMND;
		TrangthaiHS = trangthaiHS;
		ChuyennganhHS = chuyennganhHS;
		this.loaihoso = loaihoso;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getMaHS() {
		return MaHS;
	}
	public void setMaHS(String maHS) {
		MaHS = maHS;
	}
	public String getLoaiHS() {
		return LoaiHS;
	}
	public void setLoaiHS(String loaiHS) {
		LoaiHS = loaiHS;
	}
	public String getSubjectName() {
		return SubjectName;
	}
	public void setSubjectName(String subjectName) {
		SubjectName = subjectName;
	}
	public String getSoCMND() {
		return SoCMND;
	}
	public void setSoCMND(String soCMND) {
		SoCMND = soCMND;
	}
	public String getTrangthaiHS() {
		return TrangthaiHS;
	}
	public void setTrangthaiHS(String trangthaiHS) {
		TrangthaiHS = trangthaiHS;
	}
	public String getChuyennganhHS() {
		return ChuyennganhHS;
	}
	public void setChuyennganhHS(String chuyennganhHS) {
		ChuyennganhHS = chuyennganhHS;
	}

	public Loaihoso getLoaihoso() {
		return loaihoso;
	}

	public void setLoaihoso(Loaihoso loaihoso) {
		this.loaihoso = loaihoso;
	}

	@Override
	public String toString() {
		return "Hoso [id=" + id + ", MaHS=" + MaHS + ", LoaiHS=" + LoaiHS + ", SubjectName=" + SubjectName + ", SoCMND="
				+ SoCMND + ", TrangthaiHS=" + TrangthaiHS + ", ChuyennganhHS=" + ChuyennganhHS + ", loaihoso=" + loaihoso + "]";
	}

}
