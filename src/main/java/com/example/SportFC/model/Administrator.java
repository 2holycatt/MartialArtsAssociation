package com.example.SportFC.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Administrator {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id_administrator;
	private String username;
	private String password;
	
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getId_administrator() {
		return id_administrator;
	}
	public void setId_administrator(Integer id_administrator) {
		this.id_administrator = id_administrator;
	}
	
	
	
	
	

}
