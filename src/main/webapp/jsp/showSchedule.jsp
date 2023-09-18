<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.LocalDate" %>

<%@ page import="java.time.Period" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Schedule</title>
    <link rel="stylesheet" href="/css/admin_add_athlete.css">
    <style>
		
		.headr1{
			    padding: 0.5em;
			    display: grid;
			    grid-template-columns: 1fr 1fr;
			    background-color: #181D31;
			}
        .n4_input_div{
            display: grid;
            grid-template-columns: 1fr 1fr;
            background-color: white;
            color: black;
            padding: 1em 2em;
            border-radius: 0.5em;
        }

        .datetime{
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
        }

        .nameEvent{
            font-weight: bold;

        }

        .dtailLink{
            text-decoration: none;
            margin-left: 5em ;
           
            background-color: #007FFF;
            color: white;
            border-radius: 0.2em;
            text-align: center;
            padding: 0.1em;
        }
    </style>
</head>
<body>
    <header>
        <div class="headr1">
            <div>
                <p class="logo">SPORT FC</p>
            </div>
            <div>
                <ul class="menu">
                   <li class="menu_li"><a href="/Sport/user">หน้าแรก</a></li>
                    <li class="menu_li"><a href="/Show/AllAthlete">นักกีฬา</a></li>
					<li class="menu_li"><a href="/Show/ShowSch" style="color: #F49D1A;">ตารางการแข่งขัน</a></li>                    
					<li class="menu_li"><a href="/Sport/AdminLogin">ผู้ดูแลระบบ</a></li>
                </ul>
            </div>
        </div>
    </header>
    <h1>KKU Combat Federation</h1>
    <article>
        
        <div class="ad_nxt_art">
            <p class="title_1">ตารางการแข่งขัน</p>
        </div>
        
        <div class="div_add_funtion">
            <div class="div_sub_title">
                <p class="p_sub_title">ตารางการแข่งขันทั้งหมด</p>
            </div>
            <c:forEach items="${showsch}" var="show">
            <div class="n4_input_div">
                <div>
                    <p class="nameEvent">${show.schedule_name}</p>
                </div>
                <div class="datetime">
                <c:set var="dob" value="${show.schedule_date}" />
					<c:set var="dateString" value="${show.schedule_date}" />

				
                    <div>
                        <p class="datep">${dateString.substring(0, 10)}</p>
                    </div>
                    <div>
                        <p class="timep">${show.schedule_time}</p>
                    </div>
                    <a href="#" class="dtailLink">รายละเอียด</a>
                </div>
            </div>
            </c:forEach>

        </div>
    
      
        
    </article>
    <footer>
        <div class="div_footer">
            <div class="logo_footer">
                <p class="p_logo_footer">SPORT FC</p>
            </div>
            <div class="icon_footer">
                <img class="footer_icon" src="/img/icon.png">
                <div class="copyright">
                    <p class="p_copyr">&copy; 2023 SPORT FC™ ลิขสิทธิ์ถูกต้อง</p>
                </div>
            </div>
        </div>
        <div>

        </div>
    </footer>
    
</body>
</html>