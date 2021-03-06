package com.skilldistillery.plantproject.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpaplants.entities.Plant;
import com.skilldistillery.plantproject.data.PlantDAO;

@Controller
public class PlantController {

	@Autowired
	private PlantDAO plantDao;

	@RequestMapping(path = { "plantForm.do" })
	public String plantForm() {
		return "addPlant";
	}

	@RequestMapping(path = { "deleteForm.do" })
	public String deletePage() {
		return "deletePlant";
	}

	@RequestMapping(path = { "updateForm.do" })
	public String updateForm() {
		return "updatePlant";
	}

	@RequestMapping(path = { "idSearch.do" })
	public String idSearchPage() {
		return "findById";
	}

	@RequestMapping(path = { "keySearch.do" })
	public String keySearchPage() {
		return "findByKey";
	}

	@RequestMapping(path = { "style.do" })
	public String connectStyle() {
		return "style";
	}

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		List<Plant> plants = plantDao.findAll();
		model.addAttribute("plants", plants);
		return "index";
	}
	
	@RequestMapping(path = { "showAll.do" })
	public String showAll(Model model) {
		List<Plant> plants = plantDao.findAll();
		model.addAttribute("plants", plants);
		return "showAllResults";
	}


	
	@RequestMapping(path = { "getPlant.do" })
	public String showPlant(Integer pid, Model model) {
		Plant plant = plantDao.findById(pid);
		model.addAttribute("plant", plant);
		return "show";
	}

	@RequestMapping(path = { "plantbykey.do" })
	public String findByKeyword(String keyword, Model model) {
		List<Plant> plants = plantDao.findByKeyword(keyword);
		model.addAttribute("plants", plants);
		return "show";
	}

	@RequestMapping(path = { "addPlant.do" })
	public String addPlant(Plant plant, Model model) {
		Plant newPlant = plantDao.addPlant(plant);
		model.addAttribute("plant", newPlant);
		return "show";
	}

	@RequestMapping(path = { "deleteplant.do" })
	public String deletePlant(int id, Model model) {
		boolean plantDeleted = plantDao.deletePlant(id);
		model.addAttribute("plant", plantDeleted);
		if (plantDeleted == true) {
			return "deleteSuccessful";

		} else {
			return "deleteFail";
		}
	}

	@RequestMapping(path = "updatePlantById.do", params = "id", method = RequestMethod.GET)
	public ModelAndView updatePlantById(int id) {
		ModelAndView mv = new ModelAndView();
		Plant p = plantDao.findById(id);
		mv.addObject("plant", p);
		mv.setViewName("updatePlant");
		return mv;
	}

	@RequestMapping(path = "updatePlant.do", method = RequestMethod.POST)
	public ModelAndView updatePlant(int id, Plant plant) {
		ModelAndView mv = new ModelAndView();

		plantDao.updatePlant(id, plant);

		mv.setViewName("updateSuccessful");
		return mv;
	}


}
