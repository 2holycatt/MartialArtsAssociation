package com.example.SportFC.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.example.SportFC.model.Admin_repo;
import com.example.SportFC.model.Administrator;
import com.example.SportFC.model.AtheleteMain_repo;
import com.example.SportFC.model.Athlete_main_detail;
import com.example.SportFC.model.Athlete_team;
import com.example.SportFC.model.Schedule;
import com.example.SportFC.model.Schedule_detail;
import com.example.SportFC.model.Schedule_dtail_repo;
import com.example.SportFC.model.Schedule_repo;
import com.example.SportFC.model.SportInfo_repo;
import com.example.SportFC.model.Sport_info;

import com.example.SportFC.model.team_repository;


@Controller

@RequestMapping("/Add")
public class AddController {
	
	@Autowired
	Admin_repo repo1;
	
	@Autowired
	AtheleteMain_repo repoMain;
	
	@Autowired
	team_repository repoTeam;
	
	
	
	@Autowired
	Schedule_repo repoSch;
	
	@Autowired
	Schedule_dtail_repo repoSch_dtail;
	
	@Autowired
	SportInfo_repo repoSpInfo;
	
//	@GetMapping("/hello")
//	//ทดสอบ insert
//	public void add() {
//	Administrator joker = new Administrator();
//	joker.setUsername("admin002");
//	joker.setPassword("admin002");
//	repo1.save(joker);
//	}

	@GetMapping("/Admin")
	
	public String getProductList(Model p) {
		List<Administrator> adminList = (List<Administrator>) repo1.findAll();
		p.addAttribute("adminList", adminList);
		
		return "/ShowAdmin";
	}
	
	
	@PostMapping("/Admin/Login")
	String LoginAdmin(@RequestParam String username, @RequestParam String password, Model model) {
		Administrator adminLogin = repo1.findByUsernameAndPassword(username, password);
		if (adminLogin!=null) {
			return "/admin";
		} else {
			model.addAttribute("notCont", "ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง กรุณากรอกใหม่อีกครั้ง");
			return "/admin_login";
		}
	}
	
	
	@PostMapping("/Sport/Athlete")
	public String addAthelte(@ModelAttribute Athlete_main_detail athlete,
			@ModelAttribute Sport_info spinfo, 
			@ModelAttribute Athlete_team atTeam, 
			@ModelAttribute Administrator admin,
			Model model) {
			
		repoSpInfo.save(spinfo);
		repoTeam.save(atTeam);
		
		
		Optional<Administrator> adminOp = repo1.findById((int) 1);
		Optional<Sport_info> spinfoOp = repoSpInfo.findById(spinfo.getId_sp_info());
		Optional<Athlete_team> atTeamOp = repoTeam.findById(atTeam.getId_athlete_team());
		if (spinfoOp.isPresent() && atTeamOp.isPresent()) {
			
			athlete.setFk_admin(adminOp.get());
			athlete.setFk_sp_info(spinfoOp.get());
			athlete.setFk_team(atTeamOp.get());
	        
	    }
		
		repoMain.save(athlete);
		
		return "redirect:/Sport/AdminAdd";
		
		
	}
	
	@PostMapping("/Sport/CreSch")
	public String addSch(@ModelAttribute Athlete_main_detail athlete,
			@ModelAttribute Administrator admin,
			@ModelAttribute Schedule sch,
			@ModelAttribute Sport_info spInfo,
			@ModelAttribute Athlete_team atTeam, 
			@ModelAttribute Schedule_detail schDetail,
			Model model) {
			
		repoSch.save(sch);
//		Optional<Sport_info> spInfoOp = repoSpInfo.findById(spInfo.getId_sp_info());
//		Optional<Athlete_main_detail> mainOp = repoMain.findById(athlete.getId_athlete());
//		
//		Optional<Schedule> schOp = repoSch.findById(sch.getId_schedule());
//			sch.setSchedule_date(sch.getSchedule_date());
//			sch.setSchedule_name(sch.getSchedule_name());
//			sch.setSchedule_time(sch.getSchedule_time());
//			
//			schDetail.setFk__schdet_athlete_detail(schOp.get());
//			schDetail.setFk_schdet_admin(mainOp.get());
//			schDetail.setFk_schdet_athlete_team(mainOp.get());
//			schDetail.setFk_schdet_schedule(schOp.get());
//			schDetail.setFk_schdet_sp_info(mainOp.get());
			
			
//			repoSch_dtail.save(schDetail);
		
		return "redirect:/Sport/admin";
		
		
	}

	
	
	

}
