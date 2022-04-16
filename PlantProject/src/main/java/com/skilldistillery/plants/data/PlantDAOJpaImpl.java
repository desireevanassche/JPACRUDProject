package com.skilldistillery.plants.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.plants.entities.Plant;

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
		String jpql = "SELECT p FROM Plant p";
 		List<Plant> plants = em.createQuery(jpql, Plant.class).getResultList();
		return plants;
	}
}
