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

import com.example.SportFC.model.Admin_repo;

import com.example.SportFC.model.AtheleteMain_repo;
import com.example.SportFC.model.Athlete_main_detail;
import com.example.SportFC.model.Athlete_team;
import com.example.SportFC.model.Schedule;
import com.example.SportFC.model.Schedule_dtail_repo;
import com.example.SportFC.model.Schedule_repo;
import com.example.SportFC.model.SportInfo_repo;
import com.example.SportFC.model.Sport_info;
import com.example.SportFC.model.team_repository;

@Controller

@RequestMapping("/Show")
public class ShowAthController {
	
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
	
	
	

	
	@GetMapping("/AllAthlete")
    public String getAllAth(Model model) {
        List<Object[]> showath = repoMain.findAllOrders();
        model.addAttribute("usersWithOrders", showath);
        return "/ShowAthlete";
    }
	
	@GetMapping("/AllAthleteAdmin")
    public String getAllAdmin(Model model) {
        List<Object[]> showath = repoMain.findAllOrders();
        System.out.println(showath.get(0));
        
        model.addAttribute("usersWithOrders", showath);
        return "/ShowAllForAdmin";
    }
	
	@GetMapping("/AllAthleteSch")
    public String getAllSche(Model model) {
        List<Object[]> showath = repoMain.findAllOrders();
        model.addAttribute("usersWithOrders", showath);
        return "/Schedule";
    }
	
	@GetMapping("/ShowSch")
    public String showSchedule(Model model) {
        Iterable<Schedule> showsch = repoSch.findAll();
        model.addAttribute("showsch", showsch);
        return "/showSchedule";
    }
	
//	@GetMapping("/AthId")
//	public String showData(Model model) {
//        List<Object[]> data = repoMain.getJoinedData();
//        model.addAttribute("data", data);
//        return "/user_athlete_information";
//    }
	
	@GetMapping("/AthId/{athleteId}")
    public String showData(@PathVariable("athleteId") Long athleteId, Model model) {
		Athlete_main_detail dataMain = repoMain.findJoinedDataById(athleteId);
		Integer win = dataMain.getFk_sp_info().getWin();
		Integer lose = dataMain.getFk_sp_info().getLose();
		Integer tko = dataMain.getFk_sp_info().getTko();
		Integer sum = win + lose + tko;
		System.out.println(sum);
        model.addAttribute("dataMain", dataMain);
        return "/user_athlete_information";
    }
	
	@GetMapping("/AthIdAdmin/{athleteId}")
    public String showDataAdmin(@PathVariable("athleteId") Long athleteId, Model model) {
		Athlete_main_detail dataMain = repoMain.findJoinedDataById(athleteId);
		
        model.addAttribute("dataMain", dataMain);
        return "/admin_ath_information";
    }
	
	@GetMapping("/AthIdEdit/{athleteId}")
    public String ShowEdit(@PathVariable("athleteId") Long athleteId, Model model) {
		Athlete_main_detail dataMain = repoMain.findJoinedDataById(athleteId);
		
        model.addAttribute("dataMain", dataMain);
        return "/admin_edit_athlete";
    }
	
	
	
	@PostMapping("/update-athlete")
	  public String updateAthlete(@ModelAttribute("athlete") Athlete_main_detail athlete) {
	    repoMain.save(athlete);
	    return "redirect:/Show/AllAthleteAdmin";
	  }
	
	
	
	

	
//	@GetMapping("/AllAthleteTest")
//	
//	public String getTest(@ModelAttribute Athlete_main_detail athlete,
//			@ModelAttribute Sport_info spinfo,
//			Model m) {
//		
//		Optional<Sport_info> spinfoOp = repoSpInfo.findById(spinfo.getId_sp_info());
//		Optional<Athlete_main_detail> showAp = repoMain.findById(athlete.getId_athlete());
//		System.out.println(spinfoOp);
//		System.out.println(showAp);
////		m.addAttribute("showAth", showAth);
//		return "null";
//	}
	

}
