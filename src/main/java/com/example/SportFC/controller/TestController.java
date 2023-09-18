package com.example.SportFC.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.SportFC.model.AtheleteMain_repo;

@Controller
//@RestController("/Sport")
@RequestMapping("/Sport")
public class TestController {
	
//	@GetMapping("/hello")
//	public String home() {
//	return "index";
//	}
	@Autowired
	AtheleteMain_repo repoMain;
	
	@GetMapping("/user")
	String ShowHomeadmin(Model model) {
		return "index";
	}
	
	@GetMapping("/AllAthleteAdmin")
	public List<Object[]> getAllAth() {
		return repoMain.findAllOrders();
	}
	
	@GetMapping("/admin")
	String ShowLoginAsAdmin(Model model) {
		return "admin";
	}
	
	@GetMapping("/AdminAdd")
	String ShowAdminAdd(Model model) {
		return "admin_add_athlete";
	}
	
	@GetMapping("/AdminLogin")
	String ShowAdminLogin(Model model) {
		return "admin_login";
	}
	
	@GetMapping("/ShowAthInfo")
	String ShowInfo(Model model) {
		return "user_athlete_information";
	}
	
	@GetMapping("/AdminEdit")
	String Edit(Model model) {
		return "admin_edit_athlete";
	}
	
	@GetMapping("/AdminDel")
	String Delete(Model model) {
		return "admin_delete_athlete";
	}
	
	@GetMapping("/showSch")
	String showSch(Model model) {
		return "showSchedule";
	}
}


