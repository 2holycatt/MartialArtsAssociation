package com.example.SportFC.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Athlete_team {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id_athlete_team;
	
	private String athlete_team_name;
	private String athlete_team_country;
	private String athlete_team_address;
	private String athlete_team_telPhone;
	
	public Integer getId_athlete_team() {
		return id_athlete_team;
	}
	public void setId_athlete_team(Integer id_athlete_team) {
		this.id_athlete_team = id_athlete_team;
	}
	
	public String getAthlete_team_name() {
		return athlete_team_name;
	}
	public void setAthlete_team_name(String athlete_team_name) {
		this.athlete_team_name = athlete_team_name;
	}
	public String getAthlete_team_country() {
		return athlete_team_country;
	}
	public void setAthlete_team_country(String athlete_team_country) {
		this.athlete_team_country = athlete_team_country;
	}
	public String getAthlete_team_address() {
		return athlete_team_address;
	}
	public void setAthlete_team_address(String athlete_team_address) {
		this.athlete_team_address = athlete_team_address;
	}
	public String getAthlete_team_telPhone() {
		return athlete_team_telPhone;
	}
	public void setAthlete_team_telPhone(String athlete_team_telPhone) {
		this.athlete_team_telPhone = athlete_team_telPhone;
	}

	
}
