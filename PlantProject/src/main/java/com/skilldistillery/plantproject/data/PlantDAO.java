package com.skilldistillery.plantproject.data;

import java.util.List;

import com.skilldistillery.jpaplants.entities.Plant;

public interface PlantDAO {
	
	Plant findById(int id);
	List<Plant> findAll();

}
