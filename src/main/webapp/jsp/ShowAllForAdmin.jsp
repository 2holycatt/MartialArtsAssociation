<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Athlete</title>
    <link rel="stylesheet" href="/css/admin.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/shoAthlete.css">
    <link rel="stylesheet" href="/css/admin_add_athlete.css">
    <style>
		    .menu{
		    margin-left: 7em;
		}
    
    </style>
    
    
</head>
<body>
    <header>
        <div class="headr1">
            <div>
                <p class="logo">KKU Combat Federation</p>
            </div>
            <div>
                <ul class="menu">
                   <li class="menu_li" id="link1" ><a  href="/Sport/admin">หน้าแรก</a></li>
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
        
        <div class="ad_nxt_art">
            <p class="title_1">นักกีฬา</p>
        </div>


    </article>
    <div class="show_ath_div">
    	<c:forEach items="${usersWithOrders}" var="show">
        <div class="img_ath">
           <a href="/Show/AthIdAdmin/${show[0].id_athlete}" class="img_link">
                <img class="img_ath_tag" src="${show[0].img_link}" alt="Athlete Image">
            </a> 
            <br>
            <p class="athlete_name">${show[1].aka}</p><br>
            <p class="athlete_country">${show[0].country}</p>
            <div class="edit_delete">
                <a href="/Show/AthIdEdit/${show[0].id_athlete}" class="button-24-edit">แก้ไข</a>
                <a href="/Del/AthIdDel/${show[0].id_athlete}" class="button-24-delete">ลบนักกีฬา</a>
            </div>
       
        </div>
       </c:forEach>

    </div>
    <hr class="line1">
    <footer>
        <div>
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