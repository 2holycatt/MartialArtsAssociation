package com.example.SportFC.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api")
public class RestAPI {
	
	
	@Autowired
	private AtheleteMain_repo repoMain;
	
	@Autowired
	private SportInfo_repo repoSpInfo;
	

	@GetMapping("/forums")
	public List<Object[]> getAllOrders() {
        return repoMain.findAllOrders();
    }
//	public Iterable<Athlete_main_detail>getMain() {
//		return repoMain.findAllOrders();
//	}
	
	@GetMapping("/spinfo")
	public Iterable<Sport_info>getSp() {
		return repoSpInfo.findAll();
	}
	
	
	
	@GetMapping("/athl/{id_sp_info}")
	public Optional<Sport_info> getCustomer(@PathVariable("id_sp_info") Integer type) {
		return repoSpInfo.findById(type);
	}
	
	
	
	
	
	

}
