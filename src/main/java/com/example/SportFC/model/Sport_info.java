package com.example.SportFC.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Sport_info {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id_sp_info;
	
	private Integer win;
	private Integer tko;
	private Integer lose;
	
	
	private String ma_type;
	private String aka;
	
	private Integer championStatus;
	private String label_fighter;
	
	
	
	public String getLabel_fighter() {
		return label_fighter;
	}
	public void setLabel_fighter(String label_fighter) {
		this.label_fighter = label_fighter;
	}
	public Integer getChampionStatus() {
		return championStatus;
	}
	public void setChampionStatus(Integer championStatus) {
		this.championStatus = championStatus;
	}
	public Integer getId_sp_info() {
		return id_sp_info;
	}
	public void setId_sp_info(Integer id_sp_info) {
		this.id_sp_info = id_sp_info;
	}
	public Integer getWin() {
		return win;
	}
	public void setWin(Integer win) {
		this.win = win;
	}
	public Integer getTko() {
		return tko;
	}
	public void setTko(Integer tko) {
		this.tko = tko;
	}
	public Integer getLose() {
		return lose;
	}
	public void setLose(Integer lose) {
		this.lose = lose;
	}
	
	public String getMa_type() {
		return ma_type;
	}
	public void setMa_type(String ma_type) {
		this.ma_type = ma_type;
	}
	public String getAka() {
		return aka;
	}
	public void setAka(String aka) {
		this.aka = aka;
	}

	
}
