package com.skilldistillery.plantproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.jpaplants")
public class PlantProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(PlantProjectApplication.class, args);
	}

}
