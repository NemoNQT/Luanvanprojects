package com.luanvan.dao;

import java.util.List;

import com.luanvan.model.Hoso;
import com.luanvan.model.Loaihoso;

public interface HosoDao {
	
	public List<Hoso> listHoso();

	public void add(Hoso hoso);

	public void update(Hoso hoso);

	public void delete(Hoso hoso);

	public Hoso findHosoById(String id);
	
	public List<Hoso> findHoSobyMaLHS(String mahs);

}
