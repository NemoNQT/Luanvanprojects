// package com.luanvan.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.luanvan.model.Loaihoso;
//import com.luanvan.services.HosoService;
//import com.luanvan.services.LoaihosoService;
//
//@Controller
//@RequestMapping(value = "/hosomotcua")
//public class HosoController{
//
//	@Autowired
//	LoaihosoService service;
//	
//	@RequestMapping(value = "/listHS", method = RequestMethod.GET)
//	public ModelAndView list() {
//		ModelAndView model = new ModelAndView("hosomotcua/hoso/danhsachLHS_HS");
//		model.addObject("danhsach", service.listForm());
//		return model;
//	}
//}
//	
//
