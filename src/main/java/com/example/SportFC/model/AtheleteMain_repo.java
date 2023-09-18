package com.example.SportFC.model;




import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface AtheleteMain_repo extends CrudRepository<Athlete_main_detail, Integer> {
	
//    @Query("SELECT a FROM Athlete_main_detail a JOIN a.id_sp_info c WHERE c.name = :name")
	
//    @Query("SELECT a, s FROM Athlete_main_detail a JOIN a.fk_sp_info s")
//	@Query("SELECT u, o, t FROM Athlete_main_detail u JOIN u.fk_sp_info o JOIN u.fk_team t")

    @Query("SELECT u, o FROM Athlete_main_detail u JOIN u.fk_sp_info o")
    List<Object[]> findAllOrders();
    
    @Query("SELECT a, s FROM Athlete_main_detail a JOIN Sport_info s ON a.fk_sp_info = s.id_sp_info")
    List<Object[]> getJoinedData();
    
    @Query("SELECT t1 FROM Athlete_main_detail t1 JOIN t1.fk_sp_info t2 WHERE t1.id_athlete = ?1")
    Athlete_main_detail findJoinedDataById(Long id);
    
    @Query("SELECT t1 FROM Athlete_main_detail t1 JOIN t1.fk_sp_info t2 WHERE t1.id_athlete = ?1")
    Athlete_main_detail ShowAthTodel(Long showDelId);
    
    @Query("SELECT t1 FROM Athlete_main_detail t1 " +
    	       "JOIN t1.fk_sp_info t2 " +
    	       "JOIN t1.fk_team t3 " +
    	       "WHERE t1.id_athlete = ?1")
    
    List<Athlete_main_detail> findByJoinedId(Long athleteId);
    
//    @Modifying
//    @Query("UPDATE Athlete_main_detail m JOIN Sport_info s ON m.fk_sp_info = s.id_sp_info "
//    		+ "JOIN Athlete_team t ON m.fk_team = t.id_athlete_team "
//    		+ "SET m.prefix = :prefix, m.fname = :fname, m.lname = :lname"
//    		+ "m.id_athlete = :id_athlete, m.mname = :mname, m.country = :country, m.religion = :religion"
//    		+ "m.nationality = :nationality, m.ethnicity = :ethnicity, m.athlete_citiezen_id_card = :athlete_citiezen_id_card,"
//    		+ "m.athlete_telPhone = :athlete_telPhone, m.athlete_birth_date = :athlete_birth_date, m.athlete_weight = :athlete_weight,"
//    		+ "m.athlete_height = :athlete_height, m.athlete_blood_group = :athlete_blood_group, m.athlete_gender = :athlete_gender,"
//    		+ "m.athlete_story = :athlete_story, m.address = :address, m.img_link = :img_link,"
//    		+ "s.win = :win, s.tko = :tko, s.lose = :lose, s.ma_type = :ma_type,"
//    		+ "s.aka = :aka, s.championStatus = :championStatus, s.label_fighter = :label_fighter,"
//    		+ "t.athlete_team_name = :athlete_team_name, t.athlete_team_country = :athlete_team_country, t.athlete_team_address = :athlete_team_address,"
//    		+ "t.athlete_team_telPhone = :athlete_team_telPhone,"
//    		+ " WHERE m.id_athlete = :id_athlete")
//    List<Object[]> updateMainSportTeamById();
//    Athlete_main_detail updateMainSportTeamById(@Param("id_athlete") Long id_athlete, 
//    		@Param("prefix") String prefix,
//    		@Param("fname") String fname, 
//    		@Param("mname") String mname, 
//    		@Param("lname") String lname, 
//    		@Param("country") String country,
//    		@Param("religion") String religion, 
//    		@Param("nationality") String nationality, 
//    		@Param("athlete_birth_date") String athlete_birth_date, 
//    		@Param("athlete_weight") Long athlete_weight, 
//    		@Param("ethnicity") String ethnicity, 
//    		@Param("athlete_citiezen_id_card") String athlete_citiezen_id_card, 
//    		@Param("athlete_telPhone") String athlete_telPhone, 
//    		@Param("athlete_height") Long athlete_height, 
//    		@Param("athlete_blood_group") String athlete_blood_group,
//    		@Param("athlete_gender") String athlete_gender, 
//    		@Param("athlete_story") String athlete_story, 
//    		@Param("address") String address, 
//    		@Param("img_link") String img_link,
//    		@Param("win") Long win,
//    		@Param("tko") Long tko,
//    		@Param("lose") Long lose,
//    		@Param("ma_type") String ma_type,
//    		@Param("aka") String aka,
//    		@Param("championStatus") String championStatus,
//    		@Param("label_fighter") String label_fighter,
//    		@Param("athlete_team_name") String athlete_team_name,
//    		@Param("athlete_team_country") String athlete_team_country,
//    		@Param("athlete_team_address") String athlete_team_address,
//    		@Param("athlete_team_telPhone") String athlete_team_telPhone);


    
	

	
    
    
//    @Query("DELETE t1, t2, t3 FROM Athlete_main_detail t1 JOIN Sport_info t2 ON t1.fk_sp_info = t2.id_sp_info JOIN Athlete_team t3 ON t1.fk_team = t3.id_athlete_team WHERE t1.id_athlete = :id")
//    Athlete_main_detail delById(Long id);
    
    

}
