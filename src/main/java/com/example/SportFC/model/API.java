package com.example.SportFC.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class API {
	
	@Autowired
	AtheleteMain_repo repoMain;
	
	@GetMapping("/AllAthleteAdmin")
    public List<Object[]> getAllAdmin() {
        return repoMain.findAllOrders();
    }

}
