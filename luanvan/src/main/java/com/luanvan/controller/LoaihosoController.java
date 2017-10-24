 package com.luanvan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.luanvan.model.Loaihoso;
import com.luanvan.services.LoaihosoService;

@Controller
@RequestMapping(value = "/hosomotcua")
public class LoaihosoController{

	@Autowired
	LoaihosoService service;
	
	@RequestMapping(value = "/listLHS", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("hosomotcua/loaihoso/danhsachLHS");
		model.addObject("danhsach", service.listForm());
		return model;
	}

	@RequestMapping(value = "/viewLHS/{id}", method = RequestMethod.GET)
	public ModelAndView show(@PathVariable("id") String id) {
		ModelAndView model = new ModelAndView("hosomotcua/loaihoso/hienthiLHS");
		model.addObject("hienthiLHS", service.findFormById(id));
		System.out.println(service.findFormById(id));
		return model;
	}

	@RequestMapping(value = "/addLHS", method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView model = new ModelAndView("hosomotcua/loaihoso/taoLHS");
		model.addObject("taoLHS", new Loaihoso());
		return model;
	}

	@RequestMapping(value = "/updateLHS/{id}", method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") String id) {
		ModelAndView model = new ModelAndView("hosomotcua/loaihoso/capnhatLHS");
		model.addObject("capnhatLHS", service.findFormById(id));
		System.out.println(service.findFormById(id));
		return model;
	}
	
	@RequestMapping(value = "/saveLHS", method = RequestMethod.POST)
	public String save(@ModelAttribute("loaihoso") Loaihoso loaihoso) {
//		System.out.println(loaihoso.getChuyennganhLHS());
//		System.out.println("test");
		if (loaihoso.getId()!= null && !loaihoso.getId().trim().equals("")) {
			service.update(loaihoso);
		} else {
			service.add(loaihoso);
		}
		return "redirect:/hosomotcua/listLHS";
	}
	
	@RequestMapping(value = "/deleteLHS/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") String id) {
		Loaihoso loaihoso = service.findFormById(id);
		service.delete(loaihoso);
		return "redirect:/hosomotcua/listLHS";
	}

	@RequestMapping(value = "/createHS/{id}", method = RequestMethod.GET)
	public ModelAndView createHS(@PathVariable("id") String id) {
		ModelAndView model = new ModelAndView("hosomotcua/hoso/taoHS");
		model.addObject("loaihoso", service.findFormById(id));
		model.addObject("danhMucs", service.listForm());
		System.out.println(service.findFormById(id));
		return model;
	}
////////////////////Hồ sơ////////////////
	@RequestMapping(value = "/listHS", method = RequestMethod.GET)
	public ModelAndView listHS() {	
		ModelAndView model = new ModelAndView("hosomotcua/hoso/danhsachLHS_HS");
		model.addObject("danhsach", service.listForm());
		return model;
	}
}
