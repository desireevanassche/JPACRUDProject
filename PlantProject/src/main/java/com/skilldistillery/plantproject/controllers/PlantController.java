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

	@RequestMapping(path= {"plantForm.do" })
	public String plantForm() {
	  return "addPlant";
	}
	
	@RequestMapping(path= {"deleteForm.do" })
	public String deletePage() {
	  return "deletePlant";
	}
	
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
	
	@RequestMapping(path = "plantbykey.do")
	public String findByKeyword(String keyword, Model model) {
		List<Plant> plants = plantDao.findByKeyword(keyword);
		model.addAttribute("plants", plants);
		return "plant/show"; 
}
	@RequestMapping(path = "addPlant.do")
	public String addPlant(Plant plant, Model model) {
		Plant newPlant = plantDao.addPlant(plant);
		model.addAttribute("plant", newPlant);
		return "plant/show"; 
}
	@RequestMapping(path = "deleteplant.do")
	public String deletePlant(int id, Model model) {
		boolean plantDeleted = plantDao.deletePlant(id);
		model.addAttribute("plant", plantDeleted); 
//		System.out.println("43753489574857 **** PLANT DELETED ******  " + plantDeleted);
		if (plantDeleted == true) {
			return "deleteSuccessful";

		} else {
			return "deleteFail";
		}
		}
	
	@RequestMapping(path = "updatePlant.do")
	public String updatePlant(Integer pid, Model model) {
		Plant updatePlant = plantDao.findById(pid);
		model.addAttribute("plant", updatePlant);
		return "updateSuccessful";
	}
	
	
	
	
	}




