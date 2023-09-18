package com.example.SportFC.model;

import org.springframework.data.repository.CrudRepository;

public interface Admin_repo extends CrudRepository<Administrator, Integer> {


	Administrator findByUsernameAndPassword(String username, String password);

	

	

}

