<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin delete athlete</title>

    <link rel="stylesheet" href="/css/admin_add_athlete.css">
    <link rel="stylesheet" href="/css/admin_delete_athlete.css">

</head>
<body>
    <header>
        <div class="headr1">
            <div>
                <p class="logo">KKU Combat Federation</p>
            </div>
            <div>
                <ul class="menu">
                  	<li class="menu_li"><a href="/Sport/admin">หน้าแรก</a></li>
                    <li class="menu_li"><a href="/Show/AllAthleteAdmin" style="color: #F49D1A;" >นักกีฬา</a></li>
                    <li class="menu_li"><a href="/Sport/AdminAdd">เพิ่มนักกีฬา</a></li>
                   	<li class="menu_li" id="link1"><a href="/Show/AllAthleteSch">สร้างตารางการแข่งขัน</a></li>
                    <li class="menu_li"><a onclick="logout()" href="#">ออกจากระบบ</a></li>
                </ul>
            </div>
        </div>
    </header>
    <h1>Administrator</h1>
    <article>
     
        <div class="ad_nxt_art">
            <p class="title_1">ลบนักกีฬา</p>
        </div>
        
        <c:if test="${not empty delMain}">
        <form method="post" action="/Del/AthIdDeleted/${delMain.id_athlete}">
            <div class="div_add_funtion">
                <div class="sub_div_add_funtion">
                    <div class="div_sub_title">
                        <p class="p_sub_title">กรอกรหัสประจำตัวนักกีฬา</p>
                    </div><br>
                    <input type="text" class="input_text2" name="weight" id="weight_text" value="${delMain.id_athlete}" disabled>
                    <hr class="hr_line">
                    <div>
                        <div class="n2_input_div">
                            <div class="sub_div_in_each_menu">
                                <label for="fname">ชื่อ:</label><br>
                                <input type="text" class="input_text" name="fname" id="fname_text" value="${delMain.fname}">
                            </div>
                            <div class="sub_div_in_each_menu">
                                <label for="mname">ชื่อกลาง:</label><br>
                                <input type="text" class="input_text" name="mname" id="mname_text" value="${delMain.mname}">
                            </div>
                        </div>

                        <div class="n2_input_div">
                            <div class="sub_div_in_each_menu">
                                <label for="lname">นามสกุล:</label><br>
                                <input type="text" class="input_text" name="lname" id="lname_text" value="${delMain.lname}">
                            </div>
                        </div>

                        <div class="n2_input_div">
                            <div class="sub_div_in_each_menu">
                                <label for="aka_fighter">ชื่อทางการแข่งขัน:</label><br>
                                <input type="text" class="input_text" name="aka_fighter" id="aka_fighter_text" value="${delMain.fk_sp_info.aka}">
                            </div>
                            <div class="sub_div_in_each_menu">
                                <label for="mType_text">ประเภทกีฬาที่แข่งขัน:</label><br>
                                <input type="text" class="input_text" name="mType_text" id="mType_text_text" value="${delMain.fk_sp_info.ma_type}">
                            </div>
                        </div>
                        <input type="submit" value="ยืนยัน" class="submut_btn" onclick="del()">
                    </div>
                    
                </div>
                

            </div>
           
            </div>
        
        </form> 
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
		    window.location.href = "Sport/user";
		  } else {
		    // Cancel logout
		    return false;
		  }
		}
	
	function del() {
		  var confromDel = confirm("คุณต้องการลบนักกีฬาคนนี้ใช่หรือไม่");
		  
		  if (confromDel) {
		    // Send logout request to server
		    window.location.href = "/Show/AllAthleteAdmin";
		  } else {
		    // Cancel logout
		    return false;
		  }
		}
	</script>
    
    
</body>
</html>