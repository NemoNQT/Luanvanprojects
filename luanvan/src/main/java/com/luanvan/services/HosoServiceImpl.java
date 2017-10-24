package com.luanvan.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luanvan.dao.HosoDao;
import com.luanvan.model.Hoso;

@Service
public class HosoServiceImpl implements HosoService{

	@Autowired
	HosoDao dao;
	
	public List<Hoso> listHoso() {
		return dao.listHoso();
	}
	public void addHS(Hoso hoso) {
		dao.add(hoso);
		
	}

	public void updateHS(Hoso hoso) {
		dao.update(hoso);
	}

	public void deleteHS(Hoso hoso) {
		dao.delete(hoso);
		
	}

	public Hoso findHosoById(String id) {
		return dao.findHosoById(id);
	}

}
