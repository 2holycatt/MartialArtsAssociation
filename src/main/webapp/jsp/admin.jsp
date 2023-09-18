<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin-Home</title>
    <link rel="stylesheet" href="/css/admin.css">
</head>
<body>
    <header>
        <div class="headr1">
            <div>
                <p class="logo">KKU Combat Federation</p>
            </div>
            <div>
                <ul class="menu">
                    <li class="menu_li" id="link1" style="color: #F49D1A;" ><a style="color: #F49D1A;" href="/Sport/admin">หน้าแรก</a></li>
                    <li class="menu_li" id="link1"><a href="/Show/AllAthleteAdmin">นักกีฬา</a></li>
                    <li class="menu_li" id="link1"><a href="/Sport/AdminAdd">เพิ่มนักกีฬา</a></li>
                    <li class="menu_li" id="link1"><a href="/Show/AllAthleteSch">สร้างตารางการแข่งขัน</a></li>
                    <li class="menu_li"><a onclick="logout()" href="#">ออกจากระบบ</a></li>
                </ul>
            </div>
        </div>
    </header>
    <h1>Administrator</h1>
    <article>
        
        <div class="ad_nxt_art">
            
            <ul class="admin_btn_list">
            	<li class="ad_btn"><a class="link_ad_btn" href="/Show/AllAthleteAdmin">นักกีฬา</a></li>
                <li class="ad_btn"><a class="link_ad_btn" href="/Sport/AdminAdd">เพิ่มนักกีฬา</a></li>
                
                <li class="ad_btn"><a class="link_ad_btn" href="/Show/AllAthleteSch">สร้างตารางการแข่งขัน</a></li>
            </ul>
        </div>  
        
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
	</script>
    
</body>
</html>