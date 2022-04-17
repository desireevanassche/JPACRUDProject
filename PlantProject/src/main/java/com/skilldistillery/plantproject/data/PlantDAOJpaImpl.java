package com.skilldistillery.plantproject.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpaplants.entities.Plant;

@Service
@Transactional
public class PlantDAOJpaImpl implements PlantDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Plant findById(int id) {
		return em.find(Plant.class, id);
	}

	@Override
	public List<Plant> findAll() {
		String query = "SELECT p FROM Plant p";
 		List<Plant> plants = em.createQuery(query, Plant.class).getResultList();
		return plants;
	}

	@Override
	public List<Plant> findByKeyword(String keyword) {
		String query = "SELECT p FROM Plant p WHERE p.name LIKE :keyword";
 		List<Plant> plants = em.createQuery(query, Plant.class)
 			.setParameter("keyword",  ("%" + keyword + "%"))
 		.getResultList();
		return plants;
		
	}

	@Override
	public Plant addPlant(Plant plant) {
		em.persist(plant);
		return plant;
	}

	@Override
	public boolean deletePlant(int id) {
		boolean isDeleted = false;
		
		Plant plant = em.find(Plant.class, id);
		if(plant != null) {
			em.remove(plant);
			isDeleted = true; 
		}
		return isDeleted;
	}

	@Override
	public boolean updatePlant(Plant plant) {
	Plant updatePlant = em.find(Plant.class, plant.getId());
	
	if(updatePlant != null) {
	updatePlant.setName(plant.getName());
	updatePlant.setBotanicalName(plant.getBotanicalName());
	updatePlant.setCare(plant.getCare());
	updatePlant.setHumidity(plant.getHumidity());
	updatePlant.setLight(plant.getLight());
	}
	
	
	return em.contains(updatePlant);
	}
} 
