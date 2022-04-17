package com.skilldistillery.plantproject.data;

import java.util.List;

import com.skilldistillery.jpaplants.entities.Plant;

public interface PlantDAO {
	
	Plant findById(int id);
	
	List<Plant> findAll();

	public List<Plant> findByKeyword(String keyword);

	public Plant addPlant(Plant plant);


	public boolean deletePlant(int id);

	public boolean updatePlant(Plant plant);


}
