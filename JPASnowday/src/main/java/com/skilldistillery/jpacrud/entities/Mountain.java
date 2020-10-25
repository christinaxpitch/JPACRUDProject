package com.skilldistillery.jpacrud.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Mountain {

	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int id;

	
	private String name;

	public Mountain() {
		super();
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

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Mountain [id=").append(id).append(", name=").append(name).append("]");
		return builder.toString();
	}

}
