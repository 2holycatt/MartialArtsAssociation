package com.example.SportFC.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Schedule_detail {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id_schedule_detail;
	
	
	@ManyToOne
    @JoinColumn(name = "id_schedule")
    private Schedule fk_schdet_schedule;
	
	@ManyToOne
    @JoinColumn(name = "id_athlete")
    private Schedule fk__schdet_athlete_detail;
	
	@ManyToOne
    @JoinColumn(name = "id_administrator")
    private Athlete_main_detail fk_schdet_admin;
	
	@ManyToOne
    @JoinColumn(name = "id_sp_info")
    private Athlete_main_detail fk_schdet_sp_info;
	
	@ManyToOne
    @JoinColumn(name = "id_athlete_team")
    private Athlete_main_detail fk_schdet_athlete_team;

	public Integer getId_schedule_detail() {
		return id_schedule_detail;
	}

	public void setId_schedule_detail(Integer id_schedule_detail) {
		this.id_schedule_detail = id_schedule_detail;
	}

	public Schedule getFk_schdet_schedule() {
		return fk_schdet_schedule;
	}

	public void setFk_schdet_schedule(Schedule fk_schdet_schedule) {
		this.fk_schdet_schedule = fk_schdet_schedule;
	}

	public Schedule getFk__schdet_athlete_detail() {
		return fk__schdet_athlete_detail;
	}

	public void setFk__schdet_athlete_detail(Schedule fk__schdet_athlete_detail) {
		this.fk__schdet_athlete_detail = fk__schdet_athlete_detail;
	}

	public Athlete_main_detail getFk_schdet_admin() {
		return fk_schdet_admin;
	}

	public void setFk_schdet_admin(Athlete_main_detail fk_schdet_admin) {
		this.fk_schdet_admin = fk_schdet_admin;
	}

	public Athlete_main_detail getFk_schdet_sp_info() {
		return fk_schdet_sp_info;
	}

	public void setFk_schdet_sp_info(Athlete_main_detail fk_schdet_sp_info) {
		this.fk_schdet_sp_info = fk_schdet_sp_info;
	}

	public Athlete_main_detail getFk_schdet_athlete_team() {
		return fk_schdet_athlete_team;
	}

	public void setFk_schdet_athlete_team(Athlete_main_detail fk_schdet_athlete_team) {
		this.fk_schdet_athlete_team = fk_schdet_athlete_team;
	}
	
	
	
	

}
