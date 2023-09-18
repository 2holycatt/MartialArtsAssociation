<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<style>
.n6_input_div {
	display: flex;
}

.all_input2 {
	display: flex;
	margin: 2em auto;
}

.athlete {
	text-align: center;
}

.sub_div_in_each_menu3 {
	width: 100%;
}

.sub_div_in_each_menu3 {
	margin: 0 auto;
}

.all_input2 {
	width: 100%;
}

h1 {
	color: white;
	font-size: xx-large;
	vertical-align: baseline;
	
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
					<li class="menu_li" id="link1" ><a
						href="/Sport/admin">หน้าแรก</a></li>
					<li class="menu_li" id="link1"><a href="/Show/AllAthleteAdmin">นักกีฬา</a></li>
					<li class="menu_li" id="link1"><a href="/Sport/AdminAdd">เพิ่มนักกีฬา</a></li>
					<li class="menu_li" id="link1"><a href="/Show/AllAthleteSch" style="color: #F49D1A;">สร้างตารางการแข่งขัน</a></li>
					<li class="menu_li"><a onclick="logout()" href="#">ออกจากระบบ</a></li>
				</ul>
			</div>
		</div>
	</header>
	<h1>Administrator</h1>
	<article>

		<div class="ad_nxt_art">
			<p class="title_1">ตารางการแข่งขัน</p>
		</div>
		<%-- <c:forEach items="${usersWithOrders}" var="show"> --%>
			

			<form method="post" action="/Add/Sport/CreSch">

				<div class="div_add_funtion">

					<div class="n1_input_div">

						<div class="sub_div_in_each_menu">
							<label for="schedule_name">ชื่อ Event:</label><br> <input
								type="text" class="input_text2" name="schedule_name" id="weight_text"
								required>
						</div>
					</div>
					<hr class="hr_line">
					<div class="div_sub_title">
						<p class="p_sub_title">รายละเอียดการแข่งขัน</p>
					</div>
					<div class="n2_input_div">



						<div class="sub_div_in_each_menu">
							<label for="schedule_date">วันเดือนปีที่จัดการแข่งขัน:</label><br>
							<input type="date" name="schedule_date" class="date_input" required>

						</div>
						<div class="sub_div_in_each_menu">
							<label for="schedule_time">เวลาที่เริ่มการแข่งขัน:</label><br>
							<input type="time" class="date_input" name="schedule_time"
								id="height_tall_text" required>
						</div>
					</div>
					<hr class="hr_line">
					<div class="div_sub_title">
						<p class="p_sub_title">มวยไทย</p>
					</div>

					<div class="n6_input_div">
						<div class="sub_div_in_each_menu3">

							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								

									<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'มวยไทย'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>
								
							</select>
						</div>

						<div class="sub_div_in_each_menu3">
							<h1>คู่ที่ 1</h1>
						</div>

						<div class="sub_div_in_each_menu3">
							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'มวยไทย'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>

							</select>
						</div>
					</div>
					<div class="n6_input_div">
						<div class="sub_div_in_each_menu3">

							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								

									<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'มวยไทย'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>
								
							</select>
						</div>

						<div class="sub_div_in_each_menu3">
							<h1>คู่ที่ 2</h1>
						</div>

						<div class="sub_div_in_each_menu3">
							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'มวยไทย'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>

							</select>
						</div>
					</div>
					<div class="n6_input_div">
						<div class="sub_div_in_each_menu3">

							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								

									<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'มวยไทย'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>
								
							</select>
						</div>

						<div class="sub_div_in_each_menu3">
							<h1>คู่ที่ 3</h1>
						</div>

						<div class="sub_div_in_each_menu3">
							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'มวยไทย'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>

							</select>
						</div>
					</div>

					
					
					
					<hr class="hr_line">
					<div class="div_sub_title">
						<p class="p_sub_title">คิกบ็อกซิ่ง</p>
					</div>

					<div class="n6_input_div">
						<div class="sub_div_in_each_menu3">

							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								

									<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'คิกบ็อกซิ่ง'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>
								
							</select>
						</div>

						<div class="sub_div_in_each_menu3">
							<h1>คู่ที่ 1</h1>
						</div>

						<div class="sub_div_in_each_menu3">
							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'คิกบ็อกซิ่ง'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>

							</select>
						</div>
					</div>
					<div class="n6_input_div">
						<div class="sub_div_in_each_menu3">

							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								

									<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'คิกบ็อกซิ่ง'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>
								
							</select>
						</div>

						<div class="sub_div_in_each_menu3">
							<h1>คู่ที่ 2</h1>
						</div>

						<div class="sub_div_in_each_menu3">
							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'คิกบ็อกซิ่ง'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>

							</select>
						</div>
					</div>
					<div class="n6_input_div">
						<div class="sub_div_in_each_menu3">

							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								

									<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'คิกบ็อกซิ่ง'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>
								
							</select>
						</div>

						<div class="sub_div_in_each_menu3">
							<h1>คู่ที่ 3</h1>
						</div>

						<div class="sub_div_in_each_menu3">
							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'คิกบ็อกซิ่ง'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>

							</select>
						</div>
					</div>
			
					
					<hr class="hr_line">
					<div class="div_sub_title">
						<p class="p_sub_title">MMA</p>
					</div>

					<div class="n6_input_div">
						<div class="sub_div_in_each_menu3">

							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								

									<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'ศิลปะการต่อสู้แบบผสมผสาน (MMA)'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>
								
							</select>
						</div>

						<div class="sub_div_in_each_menu3">
							<h1>คู่ที่ 1</h1>
						</div>

						<div class="sub_div_in_each_menu3">
							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'ศิลปะการต่อสู้แบบผสมผสาน (MMA)'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>

							</select>
						</div>
					</div>
					<div class="n6_input_div">
						<div class="sub_div_in_each_menu3">

							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								

									<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'ศิลปะการต่อสู้แบบผสมผสาน (MMA)'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>
								
							</select>
						</div>

						<div class="sub_div_in_each_menu3">
							<h1>คู่ที่ 2</h1>
						</div>

						<div class="sub_div_in_each_menu3">
							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'ศิลปะการต่อสู้แบบผสมผสาน (MMA)'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>

							</select>
						</div>
					</div>
					<div class="n6_input_div">
						<div class="sub_div_in_each_menu3">

							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								

									<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'ศิลปะการต่อสู้แบบผสมผสาน (MMA)'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>
								
							</select>
						</div>

						<div class="sub_div_in_each_menu3">
							<h1>คู่ที่ 3</h1>
						</div>

						<div class="sub_div_in_each_menu3">
							<select class="all_input2" name="aka" id="blood_group_menu"
								required>
								<c:forEach items="${usersWithOrders}" var="showAth">
									<c:if test="${showAth[1].ma_type == 'ศิลปะการต่อสู้แบบผสมผสาน (MMA)'}">
										<c:if test="${showAth[0].athlete_weight > 103 && showAth[0].athlete_weight <= 120}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 93 && showAth[0].athlete_weight <= 103}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เฮฟวีเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 85 && showAth[0].athlete_weight <= 93}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} มิดเดิลเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 78 && showAth[0].athlete_weight <= 85}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เวลเตอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 71 && showAth[0].athlete_weight <= 77}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ไลต์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 66 && showAth[0].athlete_weight <= 71}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} เฟเธอร์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 62 && showAth[0].athlete_weight <= 66}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} แบนตัมเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 57 && showAth[0].athlete_weight <= 62}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} ฟลายเวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 53 && showAth[0].athlete_weight <= 57}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} สตรอว์เวต</option>
										</c:if>
										<c:if test="${showAth[0].athlete_weight > 47 && showAth[0].athlete_weight <= 53}">
										<option hidden>เลือกนักกีฬา</option>
										<option value="${showAth[1].aka}">${showAth[1].aka} อะตอมเวต</option>
										</c:if>
									</c:if>
									</c:forEach>

							</select>
						</div>
					</div>



					<input type="submit" value="บันทึก" class="submut_btn">

				</div>



			</form>
		<%-- </c:forEach> --%>

	</article>
	<footer>
		<div class="div_footer">
			<div class="logo_footer">
				<p class="p_logo_footer">KKU Combat Federation</p>
			</div>
			<div class="icon_footer">
				<img class="footer_icon" src="/img/icon.png">
				<div class="copyright">
					<p class="p_copyr">&copy; 2023 KKU Combat Federation™
						ลิขสิทธิ์ถูกต้อง</p>
				</div>
			</div>
		</div>
		<div></div>
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