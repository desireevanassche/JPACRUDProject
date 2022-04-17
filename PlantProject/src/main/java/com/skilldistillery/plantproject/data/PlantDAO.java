package com.skilldistillery.plantproject.data;

import java.util.List;

import com.skilldistillery.jpaplants.entities.Plant;

public interface PlantDAO {
	
	Plant findById(int id);
	
	List<Plant> findAll();

	List<Plant> findByKeyword(String keyword);

	Plant addPlant(Plant plant);


	public boolean deletePlant(int id);

	Plant updatePlant(int id, Plant plant);
	
//	public boolean updatePlant(Plant plant);


}
