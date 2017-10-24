package com.luanvan.services;

import java.util.List;

import com.luanvan.model.Hoso;

public interface HosoService {

	public List<Hoso> listHoso();

	public void addHS(Hoso hoso);

	public void updateHS(Hoso hoso);

	public void deleteHS(Hoso hoso);

	public Hoso findHosoById(String id);
}
