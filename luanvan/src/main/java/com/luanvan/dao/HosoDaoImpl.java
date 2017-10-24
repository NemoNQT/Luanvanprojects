package com.luanvan.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import org.bson.types.ObjectId;

import com.luanvan.model.Hoso;

@Repository
public class HosoDaoImpl implements HosoDao{
	
	@Autowired
	MongoTemplate mongotemplate;


	private static final String COLLECIION_NAME = "hoso";
	
	public List<Hoso> listHoso() {
		return mongotemplate.findAll(Hoso.class, COLLECIION_NAME);
	}

	public void add(Hoso hoso) {
		if (mongotemplate.collectionExists(Hoso.class)) {
			mongotemplate.createCollection(Hoso.class);
		}
		mongotemplate.insert(hoso, COLLECIION_NAME);
	}

	public void update(Hoso hoso) {
		mongotemplate.save(hoso);
	}

	public void delete(Hoso hoso) {
		mongotemplate.remove(hoso, COLLECIION_NAME);
	}

	public Hoso findHosoById(String id) {
		return mongotemplate.findById(id, Hoso.class);
	}

	public List<Hoso> findHoSobyMaLHS(String mahs) {
		Query query = new Query();
		query.addCriteria(Criteria.where("loaihoso").is(mahs));
		   return mongotemplate.find(query, Hoso.class);

	}

}
