package com.skilldistillery.plants.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.plants.data.PlantDAO;
import com.skilldistillery.plants.entities.Plant;

@Controller
public class PlantController {
	
	private PlantDAO plantDao; 

	@RequestMapping(path = {"/", "home.do"})
	public String index(Model model) {
		List<Plant> plants = plantDao.findAll();
		model.addAttribute("plants", plants);
		return "index"; 
	}
	
	@RequestMapping(path = "getPlant.do")
	public String showFilm(Integer pid, Model model) {
		Plant plant = plantDao.findById(pid);
		model.addAttribute("plant", plant);
		return "plant/show";
	}
}
