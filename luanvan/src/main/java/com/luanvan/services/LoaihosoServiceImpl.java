package com.luanvan.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luanvan.dao.LoaihosoDao;
import com.luanvan.model.Loaihoso;

@Service
public class LoaihosoServiceImpl implements LoaihosoService {

	@Autowired
	LoaihosoDao dao;

	public List<Loaihoso> listForm() {
		return dao.listForm();
	}

	public void add(Loaihoso form) {
		dao.add(form);
	}

	public void update(Loaihoso form) {
		dao.update(form);
	}

	public void delete(Loaihoso form) {
		dao.delete(form);
	}

	public Loaihoso findFormById(String id) {
		return dao.findFormById(id);
	}

}
