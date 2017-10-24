package com.luanvan.dao;
 
import java.util.List;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.luanvan.model.Account;
import com.luanvan.model.User;
import com.mongodb.MongoGridFSException;
@Repository("accountDao")
public class AccountDaoImpl implements AccountDao{
	
	@Autowired
	private MongoTemplate mongotemplate;
	private static final String COLLECIION_NAME ="account";
	public Account login(String username, String password) {
		try {
			Query query  = new Query();
			Account account  = mongotemplate
					.findOne(query.addCriteria(Criteria.where("username").is(username)) , Account.class);
			if(account != null) {
				BCryptPasswordEncoder bCryptPasswordEncoder =
						new BCryptPasswordEncoder();
				if(bCryptPasswordEncoder.matches(password,account.getPassword()))
				{
					return account;
				}
			}
			
			return null;
		}		
		catch(Exception e) {
			return null;
		}
	}
	public void signUp(Account account) {
		mongotemplate.insert(account);
	}
	public void changeProfile(Account account) {
		
		mongotemplate.save(account, "acount");
	}
	public void update(Account account) {
		mongotemplate.save(account);
		
	}
	public Account findUserById(String id) {
		/*try {
			return mongotemplate.findById(id, Account.class);
		}catch (Exception e ) {
			return null;
		}*/
		return mongotemplate.findById(id, Account.class);
		
	}

	public void delete(Account account) {
		mongotemplate.remove(account,COLLECIION_NAME);
		
	}
	public void add(Account account) {
		if(mongotemplate.collectionExists(Account.class)) {
			mongotemplate.createCollection(Account.class);
		}
		mongotemplate.insert(account,COLLECIION_NAME);
	}
	public List<Account> listAccount() {
		return mongotemplate.findAll(Account.class, COLLECIION_NAME);
	}
	public Account find(String username) {
		try {
			Query query = new Query(Criteria.where("username").is(username));
			return mongotemplate.findOne(query, Account.class);
		}catch(Exception e) {
			return null;
		}
	}
	public Account findById(String id) {
		try {
			return mongotemplate.findById(id, Account.class);
		}catch(Exception e) {
			return null;
		}
	}

}
