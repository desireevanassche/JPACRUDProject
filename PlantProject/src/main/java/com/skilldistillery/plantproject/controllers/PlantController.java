package com.skilldistillery.plantproject.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpaplants.entities.Plant;
import com.skilldistillery.plantproject.data.PlantDAO;

@Controller
public class PlantController {
	
	@Autowired
	private PlantDAO plantDao; 

//	@RequestMapping(path="/")
//	public String index() {
//	  return "index";
//	}
	
	@RequestMapping(path = {"/", "home.do"})
	public String index(Model model) {
		List<Plant> plants = plantDao.findAll();
		model.addAttribute("plants", plants);
		return "index"; 
	}
	
	@RequestMapping(path = "getPlant.do")
	public String showPlant(Integer pid, Model model) {
		Plant plant = plantDao.findById(pid);
		model.addAttribute("plant", plant);
		return "plant/show";
}
}