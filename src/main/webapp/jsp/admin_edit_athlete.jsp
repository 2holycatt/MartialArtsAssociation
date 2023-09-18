<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin edit athlete</title>
   
    <link rel="stylesheet" href="/css/admin_add_athlete.css">
    <link rel="stylesheet" href="/css/admin_edit_athlete.css">
    
    
</head>
<body>
    <header>
        <div class="headr1">
            <div>
                <p class="logo">KKU Combat Federation</p>
            </div>
            <div>
                <ul class="menu">
                   <li class="menu_li" id="link1" ><a href="/Sport/admin">หน้าแรก</a></li>
                    <li class="menu_li" id="link1"><a href="/Show/AllAthleteAdmin" style="color: #F49D1A;">นักกีฬา</a></li>
                    <li class="menu_li" id="link1"><a href="/Sport/AdminAdd">เพิ่มนักกีฬา</a></li>
					<li class="menu_li" id="link1"><a href="/Show/AllAthleteSch">สร้างตารางการแข่งขัน</a></li>
                    <li class="menu_li"><a onclick="logout()" href="#">ออกจากระบบ</a></li>
                </ul>
            </div>
        </div>
    </header>
    <h1>Administrator</h1>
    <article>
    	<c:if test="${not empty dataMain}">
        
        <div class="ad_nxt_art">
            <p class="title_1">แก้ไขข้อมูลนักกีฬา</p>
        </div>
        
        <div class="div_add_funtion">
            
            <form method="post" action="/Del/athlete/edit">
			  <div class="div_sub_title">
                <p class="p_sub_title">รหัสประจำตัวนักกีฬา</p>
            </div>
            
            <div class="n1_input_div">
                <div class="sub_div_in_each_menu">
                    <input type="text" class="input_text" name="id_athlete" id="id_edit_search_text" value="${dataMain.id_athlete}">
                </div>
                
            </div>
            
            <hr class="hr_line">
            <div class="div_sub_title">
                <p class="p_sub_title">ข้อมูลพื้นฐานนักกีฬา <c:out value="${idEditSearch}" /></p>
            </div>
            <div class="n1_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="prefix">คำนำหน้า:</label><br>
                    <select class="all_input" name="prefix" id="prefix_menu">
                    <c:if test="${dataMain.prefix == 'นาย'}">
	                    <option value="นาย" selected>นาย</option>
	                    <option value="นาง">นาง</option>
	                    <option value="นางสาว">นางสาว</option>
                    </c:if>
                    <c:if test="${dataMain.prefix == 'นาง'}">
	                    <option value="นาย">นาย</option>
	                    <option value="นาง" selected>นาง</option>
	                    <option value="นางสาว">นางสาว</option>
                    </c:if>
                    <c:if test="${dataMain.prefix == 'นางสาว'}">
	                    <option value="นาย">นาย</option>
	                    <option value="นาง">นาง</option>
	                    <option value="นางสาว" selected>นางสาว</option>
                    </c:if>
                    
                    
                    </select>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="fname">ชื่อ:</label><br>
                    <input type="text" class="input_text" name="fname" id="fname_text" value="${dataMain.fname}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="mname">ชื่อกลาง:</label><br>
                    <input type="text" class="input_text" name="mname" id="mname_text" value="${dataMain.mname}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="lname">นามสกุล:</label><br>
                    <input type="text" class="input_text" name="lname" id="lname_text" value="${dataMain.lname}">
                </div>
            </div>

            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="weight">น้ำหนัก:</label><br>
                    <input type="text" class="input_text2" name="athlete_weight" id="weight_text" value="${dataMain.athlete_weight}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="height_tall">ส่วนสูง:</label><br>
                    <input type="text" class="input_text2" name="athlete_height" id="height_tall_text" value="${dataMain.athlete_height}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="gender">เพศ:</label><br>
                    <select class="all_input" name="athlete_gender" id="gender_menu">
                    <c:if test="${dataMain.athlete_gender == 'ชาย'}">
	                    <option value="ชาย" selected>ชาย</option>
                    	<option value="หญิง">หญิง</option>
                    </c:if>
                    <c:if test="${dataMain.athlete_gender == 'หญิง'}">
	                    <option value="ชาย">ชาย</option>
                    	<option value="หญิง" selected>หญิง</option>
                    </c:if>
                    
                  
                    </select>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="date_input">วันเดือนปีเกิด:</label><br>
 
                   	
                   	<c:set var="dateString" value="${dataMain.athlete_birth_date}" />
					<input type="date" name="athlete_birth_date" class="date_input" value="${dateString.substring(0, 10)}" />
					
                </div>
            </div>

            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="blood_group">กรุ๊ปเลือด:</label><br>
                    <select class="all_input" name="athlete_blood_group" id="blood_group_menu">
                    <c:if test="${dataMain.athlete_blood_group == 'A'}">
	                    <option value="A" selected>A</option>
	                    <option value="B">B</option>
	                    <option value="O">O</option>
	                    <option value="AB">AB</option>
                    </c:if>
                    <c:if test="${dataMain.athlete_blood_group == 'B'}">
	                    <option value="A" selected>A</option>
	                    <option value="B">B</option>
	                    <option value="O">O</option>
	                    <option value="AB">AB</option>
                    </c:if>
                    <c:if test="${dataMain.athlete_blood_group == 'O'}">
	                    <option value="A">A</option>
	                    <option value="B">B</option>
	                    <option value="O" selected>O</option>
	                    <option value="AB">AB</option>
                    </c:if>
                    <c:if test="${dataMain.athlete_blood_group == 'AB'}">
	                    <option value="A">A</option>
	                    <option value="B">B</option>
	                    <option value="O">O</option>
	                    <option value="AB" selected>AB</option>
                    </c:if>
                    </select>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="country">ประเทศ:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="country" id="nationality_text" value="${dataMain.country}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="nationality">สัญชาติ:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="nationality" id="ethnicity_text" value="${dataMain.nationality}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="ethnicity">เชื้อชาติ:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="ethnicity" id="religion_text" value="${dataMain.ethnicity}">
                </div>
          
                
            </div>

            <div class="n2_input_div">
            	<div class="sub_div_in_each_menu">
                    <label for="religion">ศาสนา:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="religion" id="religion_text" value="${dataMain.religion}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="ID_card_number">เลขประจำตัวบัตรประชาชน:</label><br>
                    <input style="width: 80% ;" type="text" class="input_text2" name="athlete_citiezen_id_card" id="ID_card_number_text" value="${dataMain.athlete_citiezen_id_card}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="phone_number">หมายเลขโทรศัพท์มือถือ:</label><br>
                    <input style="width: 80% ;" type="text" class="input_text2" name="athlete_telPhone" id="phone_number_text" value="${dataMain.athlete_telPhone}">
                </div>
            </div>
            <div class="n4_input_div">
                <label for="athlete_img">ลิงค์รูปภาพนักกีฬา: </label><br>
                <textarea style="width: 80%;" id="athlete_img_text" name="img_link" rows="2">
                ${dataMain.img_link}
                </textarea>
            </div>
            
            <div class="n4_input_div">
                <label for="team_address">ที่อยู่: </label><br>
                <textarea style="width: 80%;" id="team_address_text" name="address" rows="5">
    			${dataMain.address}
                </textarea>
            </div>

            <div class="n4_input_div">
                <label for="athlete_story">บรรยายเกี่ยวกับนักกีฬา: </label><br>
                <textarea style="width: 80%;" id="athlete_story_text" name="athlete_story" rows="5" >
                ${dataMain.athlete_story}
                </textarea>
            </div>
            <hr class="hr_line">
            
            <div class="div_sub_title">
                <p class="p_sub_title">ข้อมูลและสถิติทางการกีฬา</p>
            </div>
            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="aka">ชื่อทางการแข่งขัน:</label><br>
                    <input type="text" class="input_text2" name="aka" id="aka_fighter_text" value="${dataMain.fk_sp_info.aka}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="label_fighter">ฉายา:</label><br>
                    <input type="text" class="input_text2" name="label_fighter" id="aka_fighter_text" value="${dataMain.fk_sp_info.label_fighter}">
                </div>
                
                <div class="sub_div_in_each_menu">
                    <label for="ma_type">ประเภทกีฬาที่แข่งขัน:</label><br>
                    <select class="all_input" name="ma_type" id="ma_type_menu">
                    <c:if test="${dataMain.fk_sp_info.ma_type == 'มวยไทย'}">
	                    <option value="มวยไทย" selected>มวยไทย</option>
	                    <option value="คิกบ็อกซิ่ง">คิกบ็อกซิ่ง</option>
	                    <option value="ศิลปะการต่อสู้แบบผสมผสาน (MMA)">MMA</option>
                    </c:if>
                    <c:if test="${dataMain.fk_sp_info.ma_type == 'คิกบ็อกซิ่ง'}">
	                    <option value="มวยไทย">มวยไทย</option>
	                    <option value="คิกบ็อกซิ่ง" selected>คิกบ็อกซิ่ง</option>
	                    <option value="ศิลปะการต่อสู้แบบผสมผสาน (MMA)">MMA</option>
                    </c:if>
                    <c:if test="${dataMain.fk_sp_info.ma_type == 'ศิลปะการต่อสู้แบบผสมผสาน (MMA)'}">
	                    <option value="มวยไทย">มวยไทย</option>
	                    <option value="คิกบ็อกซิ่ง">คิกบ็อกซิ่ง</option>
	                    <option value="ศิลปะการต่อสู้แบบผสมผสาน (MMA)" selected>MMA</option>
                    </c:if>
                   
                    
                    </select>
                </div>
               
            </div>
            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="score_win">สถิติการชนะด้วยคะแนน:</label><br>
                    <input style="width: 80% ;" type="number" class="input_text2" name="win" id="score_wit_text" value="${dataMain.fk_sp_info.win}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="tko_win">สถิติการด้วยการน็อคเอาท์:</label><br>
                    <input style="width: 80% ;" type="number" class="input_text2" name="tko" id="tko_wit_text" value="${dataMain.fk_sp_info.tko}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="lose_stt">สถิติการแพ้:</label><br>
                    <input style="width: 80% ;" type="number" class="input_text2" name="lose" id="lose_stt_text" value="${dataMain.fk_sp_info.lose}">
                </div>
               
            </div>
            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                	
                	<c:if test="${dataMain.fk_sp_info.championStatus == 1}">
                    <input type="radio" id="html" name="championStatus" value="1" checked>
  					<label for="championStatus">แชมป์โลก</label><br><br>
					<input type="radio" id="html" name="championStatus" value="0">
  					<label for="championStatus">ไม่ได้เป็นแชมป์โลก</label>
					</c:if>
					
					<c:if test="${dataMain.fk_sp_info.championStatus != 1}">
                    <input type="radio" id="html" name="championStatus" value="1">
  					<label for="championStatus">แชมป์โลก</label><br><br>
					<input type="radio" id="html" name="championStatus" value="0" checked>
  					<label for="championStatus">ไม่ได้เป็นแชมป์โลก</label>
					</c:if>
					
				
                </div>
                
               
            </div>
           
            
            
            <hr class="hr_line">
            <div class="div_sub_title">
                <p class="p_sub_title">ข้อมูลทีมนักกีฬา</p>
            </div>
            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="team_name">ชื่อทีม:</label><br>
                    <input type="text" class="input_text2" name="athlete_team_name" id="team_name_text" value="${dataMain.fk_team.athlete_team_name}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="teams_country">ประเทศ:</label><br>
                    <input type="text" class="input_text2" name="athlete_team_country" id="teams_country_text" value="${dataMain.fk_team.athlete_team_country}">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="teams_phone_number">เบอร์โทรศัพท์ติดต่อ:</label><br>
                    <input type="text" class="input_text2" name="athlete_team_telPhone" id="teams_phone_number_text" value="${dataMain.fk_team.athlete_team_telPhone}">
                </div>
                
               
            </div>
            <div class="n4_input_div">
                <label for="team_address">ที่อยู่: </label><br>
                <textarea style="width: 80%;" id="team_address_text" name="athlete_team_address" rows="5">
    			${dataMain.fk_team.athlete_team_address}
                </textarea>
            </div>

            <input type="submit" value="บันทึก" class="submut_btn">
            </form>
        </div>
        
         </c:if>
         
         <c:if test="${empty dataMain}">
        <div class="div_add_funtion">
            <form method="get" action="/Show/AthIdEdit/${idEditSearch}">
			  <div class="div_sub_title">
                <p class="p_sub_title">รหัสประจำตัวนักกีฬา</p>
            </div>
            
            <div class="n1_input_div">
                <div class="sub_div_in_each_menu">
                    <input type="text" class="input_text" name="id_edit_search" id="id_edit_search_text">
                </div>
                
            </div>
            <hr class="hr_line">
            <div class="div_sub_title">
                <p class="p_sub_title">ข้อมูลพื้นฐานนักกีฬา</p>
            </div>
            <div class="n1_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="prefix">คำนำหน้า:</label><br>
                    <select class="all_input" name="prefix" id="prefix_menu">
                    <option hidden>โปรดระบุคำนำหน้า</option>
                    <option value="นาย">นาย</option>
                    <option value="นาง">นาง</option>
                    <option value="นางสาว">นางสาว</option>
                    </select>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="fname">ชื่อ:</label><br>
                    <input type="text" class="input_text" name="fname" id="fname_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="mname">ชื่อกลาง:</label><br>
                    <input type="text" class="input_text" name="mname" id="mname_text" >
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="lname">นามสกุล:</label><br>
                    <input type="text" class="input_text" name="lname" id="lname_text">
                </div>
            </div>

            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="weight">น้ำหนัก:</label><br>
                    <input type="text" class="input_text2" name="athlete_weight" id="weight_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="height_tall">ส่วนสูง:</label><br>
                    <input type="text" class="input_text2" name="athlete_height" id="height_tall_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="gender">เพศ:</label><br>
                    <select class="all_input" name="athlete_gender" id="gender_menu">
                    <option hidden>โปรดระบุเพศ</option>
                    <option value="ชาย">ชาย</option>
                    <option value="หญิง">หญิง</option>
                    </select>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="date_input">วันเดือนปีเกิด:</label><br>
                    <input type="date" name="athlete_birth_date" class="date_input">
                </div>
            </div>

            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="blood_group">กรุ๊ปเลือด:</label><br>
                    <select class="all_input" name="athlete_blood_group" id="blood_group_menu">
                    <option hidden>ระบุกรุ๊ปเลือด</option>
                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="O">O</option>
                    <option value="AB">AB</option>
                    </select>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="country">ประเทศ:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="country" id="nationality_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="nationality">สัญชาติ:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="nationality" id="ethnicity_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="ethnicity">เชื้อชาติ:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="ethnicity" id="religion_text">
                </div>
          
                
            </div>

            <div class="n2_input_div">
            	<div class="sub_div_in_each_menu">
                    <label for="religion">ศาสนา:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="religion" id="religion_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="ID_card_number">เลขประจำตัวบัตรประชาชน:</label><br>
                    <input style="width: 80% ;" type="text" class="input_text2" name="athlete_citiezen_id_card" id="ID_card_number_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="phone_number">หมายเลขโทรศัพท์มือถือ:</label><br>
                    <input style="width: 80% ;" type="text" class="input_text2" name="athlete_telPhone" id="phone_number_text">
                </div>
            </div>
            <div class="n4_input_div">
                <label for="athlete_img">ลิงค์รูปภาพนักกีฬา: </label><br>
                <textarea style="width: 80%;" id="athlete_img_text" name="img_link" rows="2">
                </textarea>
            </div>
            
            <div class="n4_input_div">
                <label for="team_address">ที่อยู่: </label><br>
                <textarea style="width: 80%;" id="team_address_text" name="address" rows="5">
    
                </textarea>
            </div>

            <div class="n4_input_div">
                <label for="athlete_story">บรรยายเกี่ยวกับนักกีฬา: </label><br>
                <textarea style="width: 80%;" id="athlete_story_text" name="athlete_story" rows="5" >
                </textarea>
            </div>
            <hr class="hr_line">
            
            <div class="div_sub_title">
                <p class="p_sub_title">ข้อมูลและสถิติทางการกีฬา</p>
            </div>
            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="aka">ชื่อทางการแข่งขัน:</label><br>
                    <input type="text" class="input_text2" name="aka" id="aka_fighter_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="label_fighter">ฉายา:</label><br>
                    <input type="text" class="input_text2" name="label_fighter" id="aka_fighter_text" >
                </div>
                
                <div class="sub_div_in_each_menu">
                    <label for="ma_type">ประเภทกีฬาที่แข่งขัน:</label><br>
                    <select class="all_input" name="ma_type" id="ma_type_menu">
                    <option hidden>โปรดระบุประเภทกีฬา</option>
                    <option value="มวยไทย">มวยไทย</option>
                    <option value="คิกบ็อกซิ่ง">คิกบ็อกซิ่ง</option>
                    <option value="ศิลปะการต่อสู้แบบผสมผสาน (MMA)">MMA</option>
                    </select>
                </div>
               
            </div>
            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="score_win">สถิติการชนะด้วยคะแนน:</label><br>
                    <input style="width: 80% ;" type="number" class="input_text2" name="win" id="score_wit_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="tko_win">สถิติการด้วยการน็อคเอาท์:</label><br>
                    <input style="width: 80% ;" type="number" class="input_text2" name="tko" id="tko_wit_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="lose_stt">สถิติการแพ้:</label><br>
                    <input style="width: 80% ;" type="number" class="input_text2" name="lose" id="lose_stt_text">
                </div>
               
            </div>
            
            
            <hr class="hr_line">
            <div class="div_sub_title">
                <p class="p_sub_title">ข้อมูลทีมนักกีฬา</p>
            </div>
            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="team_name">ชื่อทีม:</label><br>
                    <input type="text" class="input_text2" name="athlete_team_name" id="team_name_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="teams_country">ประเทศ:</label><br>
                    <input type="text" class="input_text2" name="athlete_team_country" id="teams_country_text">
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="teams_phone_number">เบอร์โทรศัพท์ติดต่อ:</label><br>
                    <input type="text" class="input_text2" name="athlete_team_telPhone" id="teams_phone_number_text">
                </div>
                
               
            </div>
            <div class="n4_input_div">
                <label for="athlete_team_address">ที่อยู่: </label><br>
                <textarea style="width: 80%;" id="team_address_text" name="athlete_team_address" rows="5">
    
                </textarea>
            </div>

            <input type="submit" value="บันทึก" class="submut_btn">
            </form>  
        </div>
        
         </c:if>
        
        
        
    </article>

    <footer>
        <div class="div_footer">
            <div class="logo_footer">
                <p class="p_logo_footer">KKU Combat Federation</p>
            </div>
            <div class="icon_footer">
                <img class="footer_icon" src="/img/icon.png">
                <div class="copyright">
                    <p class="p_copyr">&copy; 2023 KKU Combat Federation™ ลิขสิทธิ์ถูกต้อง</p>
                </div>
            </div>
        </div>
        <div>

        </div>
    </footer>
    
   <script>
	function logout() {
		  var confirmLogout = confirm("คุณต้องการออกจากระบบใช่ไหมหรือไม่");
		  
		  if (confirmLogout) {
		    // Send logout request to server
		    window.location.href = "/Sport/user";
		  } else {
		    // Cancel logout
		    return false;
		  }
		}
	

	
	function redirectToPage(id) {
		  var url = "/Show/AthIdEdit/" + id; // replace this with the URL of the desired webpage and the parameter name that you want to use
		  window.location.href = url;
		}
	
	
	
	</script>
</body>
</html>