package com.luanvan.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luanvan.dao.AccountDao;
import com.luanvan.model.Account;

@Service("accountService")
@Transactional
public class AccountServiceImpl implements AccountService{

	@Autowired
	private AccountDao accountDao;

	public Account login(String username, String password) {
		return accountDao.login(username, password);
	}

	public void signUp(Account account) {
		accountDao.signUp(account);
	}

	public void changeProfile(Account account) {
		accountDao.changeProfile(account);
	}

	public void update(Account account) {
		accountDao.update(account);
	}

	public Account findUserById(String id) {
		return accountDao.findUserById(id);
	}

	public void delete(Account account) {
		accountDao.delete(account);
		
	}

	public void add(Account account) {
		accountDao.add(account);		
		
	}
	public List<Account> listAccount() {
		return accountDao.listAccount();
	}

	public Account find(String username) {
		return accountDao.find(username);
	}

	public Account findById(String id) {
		return accountDao.findById(id);
	}
}
