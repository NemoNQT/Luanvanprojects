package com.luanvan.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.luanvan.model.Form;
import com.luanvan.model.Loaihoso;
import com.luanvan.services.LoaihosoService;

import com.luanvan.model.Account;
import com.luanvan.model.User;
import com.luanvan.services.AccountService;
import com.luanvan.services.HosoService;
import com.luanvan.services.UserService;

@Controller
@RequestMapping(value = { "/hosomotcua" })
public class UserController {

	@Autowired
	UserService userService;

	@Autowired
	AccountService accountService;
//////////////Trang chu////////
	@RequestMapping(value = "/thu-tuc-hanh-chinh", method = RequestMethod.GET)
	public ModelAndView thutuchanhchinh() {
		ModelAndView model = new ModelAndView("hosomotcua/trangchu/thutuchanhchinh");
		return model;
	}

	@RequestMapping(value = "/huong-dan", method = RequestMethod.GET)
	public ModelAndView huongdan() {
		ModelAndView model = new ModelAndView("hosomotcua/trangchu/huongdan");
		return model;
	}

	@RequestMapping(value = "/thong-ke", method = RequestMethod.GET)
	public ModelAndView thongke() {
		ModelAndView model = new ModelAndView("hosomotcua/trangchu/thongke");
		return model;
	}

	@RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
	public ModelAndView gioithieu() {
		ModelAndView model = new ModelAndView("hosomotcua/trangchu/gioithieu");
		return model;
	}

	//////////////////////////////////////////////////////////////////////////////
	///////////////////////// Đăng ký, đăng nhập, đăng xuất //////////////////////
	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView dangky() {
		ModelAndView model = new ModelAndView("hosomotcua/user/dangky");
		model.addObject("account", new Account());
		return model;
	}
	//////////////////////////////Đăng Ký//////////////////
	@RequestMapping(value = "/tien-hanh-dang-ky", method = RequestMethod.POST)
	public String dangkythanhcong(@ModelAttribute("account") Account account) {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		account.setPassword(bCryptPasswordEncoder.encode(account.getPassword()));
		accountService.signUp(account);
		return "redirect:/hosomotcua/user/dangnhap";
	}
	//////////////////Đăng Nhập//////////////////////////////////////////////////////////////////////
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public String dangnhap(ModelMap modelMap) {
		modelMap.put("account", new Account());
		return "hosomotcua/user/dangnhap";
	}
	////////////////////Đăng Nhập////////////////////////////////////////
	@RequestMapping(value = "/tien-hanh-dang-nhap", method = RequestMethod.POST)
	public String login(Account account, HttpSession session, ModelMap modelMap) {
		Account account2 = accountService.login(account.getUsername(), account.getPassword());
		if (account2 == null) {
			modelMap.put("error", "Loi");
			return "hosomotcua/user/dangnhap";

		} else {
			session.setAttribute("username", account.getUsername());
			session.setAttribute("password", account.getPassword());
			if(account.getUsername().equals("admin")) {
				return "hosomotcua/admin/homepage_admin";
			} else {
				return "hosomotcua/user/homepage_user";
			}
		}
	}
	///Đăng Xuất////
	@RequestMapping(value = "dang-xuat", method = RequestMethod.GET)
	public String dangxuat(HttpSession session) {
		session.removeAttribute("username");
		return "hosomotcua/user/dangnhap";
	}
	//////////Thông tin hồ sơ//////////
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(ModelMap modelMap, HttpSession session) {
		Account mahoa = accountService.find(session.getAttribute("username").toString());
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		mahoa.setPassword(bCryptPasswordEncoder.encode(mahoa.getPassword()));
		System.out.println("mahoa: " + mahoa.getPassword());
		modelMap.put("account", mahoa);
//		modelMap.put("account", accountService.find(session.getAttribute("username").toString()));
		return "hosomotcua/user/profile";
	}
	//////////Thông tin hồ sơ//////////
	@RequestMapping(value = "profile", method = RequestMethod.POST)
	public String profile(@ModelAttribute("account") Account account, ModelMap modelMap) {
		Account account2 = accountService.findById(account.getId());
		// Ma hoa mat khau
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		account.setPassword(bCryptPasswordEncoder.encode(account.getPassword()));
		accountService.update(account);
		modelMap.put("account", account);
		return "hosomotcua/user/homepage_user";
		
	}
}
	
