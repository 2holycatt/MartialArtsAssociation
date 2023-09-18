package com.example.SportFC.model;




import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;


@Entity
public class Athlete_main_detail {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id_athlete;
	
	private String prefix;
	private String fname;
	private String lname;
	private String mname;
	private String country;
	private String religion;
	private String nationality;
	private String ethnicity;
	private String athlete_citiezen_id_card;
	private String athlete_telPhone;
	private String athlete_birth_date;
	private Float athlete_weight;
	private Float athlete_height;
	private String athlete_blood_group;
	private String athlete_gender;
	private String athlete_story;
	private String address;
	private String img_link;
	
	
	@ManyToOne
    @JoinColumn(name = "id_administrator")
    private Administrator fk_admin;

	@ManyToOne
    @JoinColumn(name = "id_athlete_team")
    private Athlete_team fk_team;
	
	@ManyToOne
    @JoinColumn(name = "id_sp_info")
    private Sport_info fk_sp_info;



	public String getImg_link() {
		return img_link;
	}
	public void setImg_link(String img_link) {
		this.img_link = img_link;
	}
	public Administrator getFk_admin() {
		return fk_admin;
	}
	public void setFk_admin(Administrator fk_admin) {
		this.fk_admin = fk_admin;
	}
	public Athlete_team getFk_team() {
		return fk_team;
	}
	public void setFk_team(Athlete_team fk_team) {
		this.fk_team = fk_team;
	}
	public Sport_info getFk_sp_info() {
		return fk_sp_info;
	}
	public void setFk_sp_info(Sport_info fk_sp_info) {
		this.fk_sp_info = fk_sp_info;
	}
	
	public Integer getId_athlete() {
		return id_athlete;
	}
	public void setId_athlete(Integer id_athlete) {
		this.id_athlete = id_athlete;
	}
	public String getPrefix() {
		return prefix;
	}
	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getEthnicity() {
		return ethnicity;
	}
	public void setEthnicity(String ethnicity) {
		this.ethnicity = ethnicity;
	}
	public String getAthlete_citiezen_id_card() {
		return athlete_citiezen_id_card;
	}
	public void setAthlete_citiezen_id_card(String athlete_citiezen_id_card) {
		this.athlete_citiezen_id_card = athlete_citiezen_id_card;
	}
	public String getAthlete_telPhone() {
		return athlete_telPhone;
	}
	public void setAthlete_telPhone(String athlete_telPhone) {
		this.athlete_telPhone = athlete_telPhone;
	}
	public String getAthlete_birth_date() {
		return athlete_birth_date;
	}
	public void setAthlete_birth_date(String athlete_birth_date) {
		this.athlete_birth_date = athlete_birth_date;
	}
	public Float getAthlete_weight() {
		return athlete_weight;
	}
	public void setAthlete_weight(Float athlete_weight) {
		this.athlete_weight = athlete_weight;
	}
	public Float getAthlete_height() {
		return athlete_height;
	}
	public void setAthlete_height(Float athlete_height) {
		this.athlete_height = athlete_height;
	}
	public String getAthlete_blood_group() {
		return athlete_blood_group;
	}
	public void setAthlete_blood_group(String athlete_blood_group) {
		this.athlete_blood_group = athlete_blood_group;
	}
	public String getAthlete_gender() {
		return athlete_gender;
	}
	public void setAthlete_gender(String athlete_gender) {
		this.athlete_gender = athlete_gender;
	}
	
	public String getAthlete_story() {
		return athlete_story;
	}
	public void setAthlete_story(String athlete_story) {
		this.athlete_story = athlete_story;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	
	
	
	
	

	
	

	
	
	
	
	
	

}
