package com.skilldistillery.plants.data;

import java.util.List;

import com.skilldistillery.plants.entities.Plant;

public interface PlantDAO {
	Plant findById(int id);
	List<Plant> findAll();

}
