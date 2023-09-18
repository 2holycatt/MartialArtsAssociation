<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.LocalDate" %>

<%@ page import="java.time.Period" %>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Athlete Information</title>
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/admin.css">
    <link rel="stylesheet" href="/css/user_ahtlete_information.css">
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
                    <li class="menu_li" id="link1"><a style="color: #F49D1A;" href="/Show/AllAthleteAdmin">นักกีฬา</a></li>
                    <li class="menu_li" id="link1"><a href="/Sport/AdminAdd">เพิ่มนักกีฬา</a></li>
					<li class="menu_li" id="link1"><a href="/Show/AllAthleteSch">สร้างตารางการแข่งขัน</a></li>
                    <li class="menu_li"><a onclick="logout()" href="#">ออกจากระบบ</a></li>
                </ul>
            </div>
        </div>
    </header>
    <h1>Administrator</h1>
    <article>
					<c:set var="weightRate" value="${dataMain.athlete_weight}">
					</c:set>
					<c:set var="grade">
					  <c:choose>
					    <c:when test="${weightRate > 103 && weightRate <= 120}">
					      <c:set var="getRete" value="เฮฟวีเวต" />
					    </c:when>
					    <c:when test="${weightRate > 93 && weightRate <= 103}">
					      <c:set var="getRete" value="ไลต์เฮฟวีเวต" />
					    </c:when>
					    <c:when test="${weightRate > 85 && weightRate <= 93}">
					      <c:set var="getRete" value="มิดเดิลเวต" />
					    </c:when>
					    <c:when test="${weightRate > 78 && weightRate <= 85}">
					      <c:set var="getRete" value="เวลเตอร์เวต" />
					    </c:when>
					    <c:when test="${weightRate > 71 && weightRate <= 77}">
					      <c:set var="getRete" value="ไลต์เวต" />
					    </c:when>
					    <c:when test="${weightRate > 66 && weightRate <= 71}">
					      <c:set var="getRete" value="เฟเธอร์เวต" />
					    </c:when>
					    <c:when test="${weightRate > 62 && weightRate <= 66}">
					      <c:set var="getRete" value="แบนตัมเวต" />
					    </c:when>
					    <c:when test="${weightRate > 57 && weightRate <= 62}">
					      <c:set var="getRete" value="ฟลายเวต" />
					    </c:when>
					    <c:when test="${weightRate > 53 && weightRate <= 57}">
					      <c:set var="getRete" value="สตรอว์เวต" />
					    </c:when>
					    <c:when test="${weightRate > 47 && weightRate <= 53}">
					      <c:set var="getRete" value="อะตอมเวต" />
					    </c:when>
					  </c:choose>
					  </c:set>
					
					
    <c:if test="${not empty dataMain}">
        <div class="ad_nxt_art">
            <div class="aka_title">
                <p class="title_1" name="aka_name_user_info"><c:out value="${dataMain.fk_sp_info.aka}" /></p>
                <c:if test="${dataMain.fk_sp_info.championStatus == 1}">
    				<p class="title_2" name="world_champoion_info">แชมป์โลก ${getRete} ${dataMain.fk_sp_info.ma_type} </p>
				</c:if>
				<c:if test="${dataMain.fk_sp_info.championStatus != 1}">
    				<p class="title_2" name="world_champoion_info">${getRete} ${dataMain.fk_sp_info.ma_type} </p>
				</c:if>
                <%-- <c:choose>
				  <c:when test="${dataMain.fk_sp_info.championStatus == '1'} ">
				    <p class="title_2" name="world_champoion_info">แชมป์โลก ${getRete} ${dataMain.fk_sp_info.ma_type} </p>
				  </c:when>
				  <c:otherwise>
      				<p class="title_2" name="world_champoion_info">แชมป์โลก ${getRete} ${dataMain.fk_sp_info.ma_type}</p>
    				</c:otherwise>

				</c:choose> --%>
                
            </div>
            
        </div>
    </article>
    <div class="above_arc">

        <div class="show_information">
            <img class="img" src="${dataMain.img_link}" alt="Athlete Photo">
        </div>

        <div class="div_text">
            <div class="textn1">
                <div class="sub_text">
                    <p class="label">
                        พิกัดน้ำหนัก
                    </p>
                    <p class="p_value">
                        ${dataMain.athlete_weight} กก.
                    </p>
                </div>
                <div class="sub_text">
                    <p class="label">
                        ส่วนสูง
                    </p>
                    <p class="p_value">
                        ${dataMain.athlete_height} ซม.
                    </p>
                </div>
                <div class="sub_text">
                    <p class="label">
                        อายุ
                    </p>
               
				<c:set var="dob" value="${dataMain.athlete_birth_date}" />
				<c:set var="birthdate" value="${fn:substring(dob, 0, 10)}" />

				<%
				  LocalDate birthdate = LocalDate.parse((String) pageContext.getAttribute("birthdate"));
				
				  LocalDate today = LocalDate.now();
				  Period period = Period.between(birthdate, today);
				
				  int age = period.getYears();
				
				%>
                    <p class="p_value">
                       <%= age %>
                    </p>
                </div>
                <div class="sub_text">
                    <p class="label">
                        ประเทศ
                    </p>
                    <p class="p_value">
                        ${dataMain.country}
                    </p>
                </div>
            </div>
            <div class="textn2">
                <div class="sub_text">
                    <p class="label">
                        ทีม
                    </p>
                    <p class="p_value">
                         ${dataMain.fk_team.athlete_team_name}
                    </p>
                </div>
                <div class="sub_text">
                    <p class="label">
                        สถิติโดยรวม
                    </p>
                    <p class="p_value">
                        ${dataMain.fk_sp_info.win + dataMain.fk_sp_info.tko + dataMain.fk_sp_info.lose}-${dataMain.fk_sp_info.win + dataMain.fk_sp_info.tko}-${dataMain.fk_sp_info.lose}
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="about_div">
        <p class="p_about">เกี่ยวกับ</p>
        <c:choose>
		  <c:when test="${empty dataMain.athlete_story}">
		    <p class="about_text">
		    - ยังไม่มีบรรยายเกี่ยวกับของนักกีฬาคนนี้
		    </p>
		  </c:when>
		  <c:otherwise>
		    <p class="about_text">
        	${dataMain.athlete_story}
        	</p>
		  </c:otherwise>
		</c:choose>
        
    </div>
    </c:if>
    <hr>
    
    <footer>
        <div>
            <div class="logo_footer">
                <p class="p_logo_footer">KKU Combat Federation</p>
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