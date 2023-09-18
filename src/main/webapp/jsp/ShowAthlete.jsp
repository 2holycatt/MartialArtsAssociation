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
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/shoAthlete.css">
    <link rel="stylesheet" href="/css/admin_add_athlete.css">
    <style>
    	.headr1{
    	display:grid;
    	grid-template-columns:1fr 1fr;
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
                    <li class="menu_li"><a href="/Sport/user">หน้าแรก</a></li>
                    <li class="menu_li"><a href="/Show/AllAthlete" style="color: #F49D1A;">นักกีฬา</a></li>
					<li class="menu_li"><a href="/Show/ShowSch">ตารางการแข่งขัน</a></li>                    
                    <li class="menu_li"><a href="/Sport/AdminLogin">ผู้ดูแลระบบ</a></li>
                </ul>
            </div>
        </div>
    </header>
    <h1>KKU Combat Federation</h1>
    <article>
        
        <div class="ad_nxt_art">
            <p class="title_1">นักกีฬา</p>
        </div>


    </article>
    <div class="show_ath_div">
  
    	<c:forEach items="${usersWithOrders}" var="show">
        <div class="img_ath">
        
           <a href="/Show/AthId/${show[0].id_athlete}" class="img_link">
                <img class="img_ath_tag" src="${show[0].img_link}" alt="Athlete Image">
            </a> 
            <br>
            
            <p class="athlete_name">${show[1].aka}</p><br>
            <p class="athlete_country">${show[0].country}</p>
       		
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
</body>
</html>