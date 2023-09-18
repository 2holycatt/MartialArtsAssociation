package com.example.SportFC.model;

import org.springframework.data.repository.CrudRepository;

public interface Schedule_repo extends CrudRepository<Schedule, Integer> {

	void save(Sport_info spinfo);

}
