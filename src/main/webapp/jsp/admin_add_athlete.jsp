<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin add athlete</title>
    

    <link rel="stylesheet" href="/css/admin_add_athlete.css">
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
                    <li class="menu_li" id="link1"><a href="/Show/AllAthleteAdmin">นักกีฬา</a></li>
                    <li class="menu_li" id="link1"><a style="color: #F49D1A;" href="/Sport/AdminAdd">เพิ่มนักกีฬา</a></li>
					<li class="menu_li" id="link1"><a href="/Show/AllAthleteSch">สร้างตารางการแข่งขัน</a></li>
                    <li class="menu_li"><a onclick="logout()" href="#">ออกจากระบบ</a></li>
                </ul>
            </div>
        </div>
    </header>
    <h1>Administrator</h1>
    <article>
        
        <div class="ad_nxt_art">
            <p class="title_1">เพิ่มนักกีฬา</p>
        </div>
        <form action="/Add/Sport/Athlete" method="post">
        <div class="div_add_funtion">
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
                    <input type="text" class="input_text" name="fname" id="fname_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="mname">ชื่อกลาง:</label><br>
                    <input type="text" class="input_text" name="mname" id="mname_text" >
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="lname">นามสกุล:</label><br>
                    <input type="text" class="input_text" name="lname" id="lname_text" required>
                </div>
            </div>

            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="weight">น้ำหนัก:</label><br>
                    <input type="text" class="input_text2" name="athlete_weight" id="weight_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="height_tall">ส่วนสูง:</label><br>
                    <input type="text" class="input_text2" name="athlete_height" id="height_tall_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="gender">เพศ:</label><br>
                    <select class="all_input" name="athlete_gender" id="gender_menu" required>
                    <option hidden>โปรดระบุเพศ</option>
                    <option value="ชาย">ชาย</option>
                    <option value="หญิง">หญิง</option>
                    </select>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="date_input">วันเดือนปีเกิด:</label><br>
                    <input type="date" name="athlete_birth_date" class="date_input" required>
                </div>
            </div>

            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="blood_group">กรุ๊ปเลือด:</label><br>
                    <select class="all_input" name="athlete_blood_group" id="blood_group_menu" required>
                    <option hidden>ระบุกรุ๊ปเลือด</option>
                    <option value="A">A</option>
                    <option value="B">B</option>
                    <option value="O">O</option>
                    <option value="AB">AB</option>
                    </select>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="country">ประเทศ:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="country" id="nationality_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="nationality">สัญชาติ:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="nationality" id="ethnicity_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="ethnicity">เชื้อชาติ:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="ethnicity" id="religion_text" required>
                </div>
          
                
            </div>

            <div class="n2_input_div">
            	<div class="sub_div_in_each_menu">
                    <label for="religion">ศาสนา:</label><br>
                    <input style="width: 70% ;" type="text" class="input_text2" name="religion" id="religion_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="ID_card_number">เลขประจำตัวบัตรประชาชน:</label><br>
                    <input style="width: 80% ;" type="text" class="input_text2" name="athlete_citiezen_id_card" id="ID_card_number_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="phone_number">หมายเลขโทรศัพท์มือถือ:</label><br>
                    <input style="width: 80% ;" type="text" class="input_text2" name="athlete_telPhone" id="phone_number_text" required>
                </div>
            </div>
            <div class="n4_input_div">
                <label for="athlete_img">ลิงค์รูปภาพนักกีฬา: </label><br>
                <textarea style="width: 80%;" id="athlete_img_text" name="img_link" rows="2" required>
                </textarea>
            </div>
            
            <div class="n4_input_div">
                <label for="team_address">ที่อยู่: </label><br>
                <textarea style="width: 80%;" id="team_address_text" name="address" rows="5" required>
    
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
                    <input type="text" class="input_text2" name="aka" id="aka_fighter_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="label_fighter">ฉายา:</label><br>
                    <input type="text" class="input_text2" name="label_fighter" id="aka_fighter_text" >
                </div>
                
                <div class="sub_div_in_each_menu">
                    <label for="ma_type">ประเภทกีฬาที่แข่งขัน:</label><br>
                    <select class="all_input" name="ma_type" id="ma_type_menu" required>
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
                    <input style="width: 80% ;" type="number" class="input_text2" name="win" id="score_wit_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="tko_win">สถิติการชนะด้วยการน็อคเอาท์:</label><br>
                    <input style="width: 80% ;" type="number" class="input_text2" name="tko" id="tko_wit_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="lose_stt">สถิติการแพ้:</label><br>
                    <input style="width: 80% ;" type="number" class="input_text2" name="lose" id="lose_stt_text" required>
                </div>
               
            </div>
            
            
            <hr class="hr_line">
            <div class="div_sub_title">
                <p class="p_sub_title">ข้อมูลทีมนักกีฬา</p>
            </div>
            <div class="n2_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="team_name">ชื่อทีม:</label><br>
                    <input type="text" class="input_text2" name="athlete_team_name" id="team_name_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="teams_country">ประเทศ:</label><br>
                    <input type="text" class="input_text2" name="athlete_team_country" id="teams_country_text" required>
                </div>
                <div class="sub_div_in_each_menu">
                    <label for="teams_phone_number">เบอร์โทรศัพท์ติดต่อ:</label><br>
                    <input type="text" class="input_text2" name="athlete_team_telPhone" id="teams_phone_number_text" required>
                </div>
                
               
            </div>
            <div class="n4_input_div">
                <label for="team_address">ที่อยู่: </label><br>
                <textarea style="width: 80%;" id="team_address_text" name="athlete_team_address" rows="5" required>
    
                </textarea>
            </div>
           

            <input type="submit" value="บันทึก" class="submut_btn">
          
        </div>
        
        
        
        </form>  
        
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
    
    <button onclick="logout()">Logout</button>

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
	</script>
    
</body>
</html>