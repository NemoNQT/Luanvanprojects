package com.luanvan.services;

import java.util.List;

import com.luanvan.model.Account;
import com.luanvan.model.User;

public interface AccountService {
	public Account login(String username, String password);
	public void signUp(Account account);
	public void changeProfile(Account account);
	public void update(Account account);
	public Account findUserById(String id);
	public void delete(Account account);
	public void add(Account account);
	public List<Account> listAccount();
	public Account find(String username);
	public Account findById(String id);


}


