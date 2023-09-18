package com.example.SportFC.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.SportFC.model.Admin_repo;
import com.example.SportFC.model.AtheleteMain_repo;
import com.example.SportFC.model.Athlete_main_detail;
import com.example.SportFC.model.Athlete_team;
import com.example.SportFC.model.Schedule_dtail_repo;
import com.example.SportFC.model.Schedule_repo;
import com.example.SportFC.model.SportInfo_repo;
import com.example.SportFC.model.Sport_info;
import com.example.SportFC.model.team_repository;

@Controller

@RequestMapping("/Del")
public class DelController {

	@Autowired
	Admin_repo repo1;
	
	@Autowired
	AtheleteMain_repo repoMain;
//	
	@Autowired
	team_repository repoTeam;
	
	@Autowired
	Schedule_repo repoSch;
	
	@Autowired
	Schedule_dtail_repo repoSch_dtail;
	
	@Autowired
	SportInfo_repo repoSpInfo;
	
	@GetMapping("/AthIdDel/{showDelId}")
    public String ShowDel(@PathVariable("showDelId") Long showDelId, Model delMo) {
		Athlete_main_detail delMain = repoMain.ShowAthTodel(showDelId);
		
		delMo.addAttribute("delMain", delMain);
        return "/admin_delete_athlete";
    }
	
	
	@Transactional
	@PostMapping("/AthIdDeleted/{delId}")
	public String delete(@PathVariable("delId") Integer delId) {
		Athlete_main_detail table1 = repoMain.findById(delId)
	            .orElseThrow(() -> new IllegalArgumentException("Invalid id: " + delId));
		repoMain.delete(table1);
		repoSpInfo.delete(table1.getFk_sp_info());
		repoTeam.delete(table1.getFk_team());
	    return "/admin";
	}
	
	@PostMapping("/athlete/edit")
	@Transactional
	public String update(@ModelAttribute Athlete_main_detail editAthleteMain, 
			@ModelAttribute Sport_info editSp,
			@ModelAttribute Athlete_team editTeam, 
			Model model) {
		
	    // ดึงข้อมูลของลูกค้าเก่าจากฐานข้อมูล
		Athlete_main_detail oldAthleteMain = repoMain.findById(editAthleteMain.getId_athlete())
				
	            .orElseThrow(() -> new IllegalArgumentException("Invalid athlete id:" + editAthleteMain.getId_athlete()));
//		Sport_info oldSpInfo = repoSpInfo.findById(editSp.getId_sp_info())
//				
//	            .orElseThrow(() -> new IllegalArgumentException("Invalid athlete id:" + editSp.getId_sp_info()));
//		
//		Athlete_team oldTeam = repoTeam.findById(editTeam.getId_athlete_team())
//	            .orElseThrow(() -> new IllegalArgumentException("Invalid athlete id:" + editTeam.getId_athlete_team()));

	    // อัพเดทข้อมูลลูกค้าเก่า
		
	    oldAthleteMain.setId_athlete(editAthleteMain.getId_athlete());
	    oldAthleteMain.setFname(editAthleteMain.getFname());
	    oldAthleteMain.setLname(editAthleteMain.getLname());
	    oldAthleteMain.setMname(editAthleteMain.getMname());
	    oldAthleteMain.setReligion(editAthleteMain.getReligion());
	    oldAthleteMain.setNationality(editAthleteMain.getNationality());
	    oldAthleteMain.setEthnicity(editAthleteMain.getEthnicity());
	    oldAthleteMain.setAthlete_citiezen_id_card(editAthleteMain.getAthlete_citiezen_id_card());
	    oldAthleteMain.setAthlete_telPhone(editAthleteMain.getAthlete_telPhone());
	    oldAthleteMain.setAthlete_birth_date(editAthleteMain.getAthlete_birth_date());
	    oldAthleteMain.setAthlete_weight(editAthleteMain.getAthlete_weight());
	    oldAthleteMain.setAthlete_height(editAthleteMain.getAthlete_height());
	    oldAthleteMain.setAthlete_blood_group(editAthleteMain.getAthlete_blood_group());
	    oldAthleteMain.setAthlete_gender(editAthleteMain.getAthlete_gender());
	    oldAthleteMain.setAthlete_story(editAthleteMain.getAthlete_story());
	    oldAthleteMain.setAddress(editAthleteMain.getAddress());
	    oldAthleteMain.setImg_link(editAthleteMain.getImg_link());
	    
	    Sport_info sp = oldAthleteMain.getFk_sp_info();
	    
	    sp.setAka(editSp.getAka());
	    sp.setChampionStatus(editSp.getChampionStatus());
	    sp.setLabel_fighter(editSp.getLabel_fighter());
	    sp.setLose(editSp.getLose());
	    sp.setMa_type(editSp.getMa_type());
	    sp.setTko(editSp.getTko());
	    sp.setWin(editSp.getWin());
	    
	    Athlete_team at = oldAthleteMain.getFk_team();
	    at.setAthlete_team_address(editTeam.getAthlete_team_address());
	    at.setAthlete_team_country(editTeam.getAthlete_team_country());
	    at.setAthlete_team_name(editTeam.getAthlete_team_name());
	    at.setAthlete_team_telPhone(editTeam.getAthlete_team_telPhone());

	    
	    repoMain.save(oldAthleteMain);
	    repoSpInfo.save(sp);
	    repoTeam.save(at);
	    

	    return "redirect:/Show/AllAthleteAdmin";// ส่งไปยังหน้าแสดงรายการลูกค้า
	}
	







}
