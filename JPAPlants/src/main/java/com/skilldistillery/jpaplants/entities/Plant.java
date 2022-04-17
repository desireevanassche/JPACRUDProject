package com.skilldistillery.jpaplants.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Plant {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "botanical_name")
	private String botanicalName;
	
	@Column
	private String type;

	@Column(name = "light_requirement")
	private String light;
	
	@Column(name = "height_inches")
	private Integer height;
	
	@Column(name = "pot_size")
	private Integer potSize;
	
	@Column
	private Double price;

	@Column(name = "care_level")
	private String care;


	@Column(name = "humidity_requirement")
	private String humidity;

	
	public Plant() {
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getBotanicalName() {
		return botanicalName;
	}


	public void setBotanicalName(String botanicalName) {
		this.botanicalName = botanicalName;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getLight() {
		return light;
	}


	public void setLight(String light) {
		this.light = light;
	}


	public Integer getHeight() {
		return height;
	}


	public void setHeight(Integer height) {
		this.height = height;
	}


	public Integer getPotSize() {
		return potSize;
	}


	public void setPotSize(Integer potSize) {
		this.potSize = potSize;
	}


	public Double getPrice() {
		return price;
	}


	public void setPrice(Double price) {
		this.price = price;
	}


	public String getCare() {
		return care;
	}


	public void setCare(String care) {
		this.care = care;
	}


	public String getHumidity() {
		return humidity;
	}


	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}


	@Override
	public String toString() {
		return "Plant [id=" + id + ", name=" + name + ", botanicalName=" + botanicalName + ", type=" + type + ", light="
				+ light + ", height=" + height + ", potSize=" + potSize + ", price=" + price + ", care=" + care
				+ ", humidity=" + humidity + "]";
	}
	
	
	}
	
