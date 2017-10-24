package com.luanvan.dao;

import java.util.List;

import com.luanvan.model.Loaihoso;

public interface LoaihosoDao {
	
	public List<Loaihoso> listForm();

	public void add(Loaihoso form);

	public void update(Loaihoso form);

	public void delete(Loaihoso form);

	public Loaihoso findFormById(String id);
}
