package com.luanvan.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.luanvan.model.Loaihoso;

@Repository
public class LoaihosoDaoImpl implements LoaihosoDao {

	@Autowired
	 MongoTemplate mongotemplate;

	private static final String COLLECIION_NAME = "loaihoso";

	public List<Loaihoso> listForm() {
		return mongotemplate.findAll(Loaihoso.class, COLLECIION_NAME);
	}

	public void add(Loaihoso form) {
		if (mongotemplate.collectionExists(Loaihoso.class)) {
			mongotemplate.createCollection(Loaihoso.class);
		}
//		form.setId(UUID.randomUUID().toString());
		mongotemplate.insert(form, COLLECIION_NAME);
	}

	public void update(Loaihoso form) {
		mongotemplate.save(form);
	}

	public void delete(Loaihoso form) {
		mongotemplate.remove(form, COLLECIION_NAME);
	}

	public Loaihoso findFormById(String id) {
		return mongotemplate.findById(id, Loaihoso.class);
	}

}
