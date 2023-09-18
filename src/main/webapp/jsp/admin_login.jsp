<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login As Admin</title>
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
                    <!-- <li class="menu_li"><a href="#">หน้าแรก</a></li>
                    <li class="menu_li"><a href="#">นักกีฬา</a></li>
                    <li class="menu_li"><a href="#">ตารางการแข่งขัน</a></li> -->
                    <!-- <li class="menu_li"><a href="#">เกี่ยวกับเรา</a></li> -->
                </ul>
            </div>
        </div>
    </header>
    <h1>Administrator</h1>
    <article>
        <div class="ad_nxt_art">
        <h2>ล็อคอินผู้ดูแลระบบ</h2>
            <form action="/Add/Admin/Login" method="post">
            <div class="n11_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="username" class="label_login">Username:</label><br>
                    <input type="text" class="input_text3" name="username" id="team_name_text" required>
            </div>
            </div>
            <div class="n11_input_div">
                <div class="sub_div_in_each_menu">
                    <label for="password" class="label_login">Password:</label><br>
                    <input type="password" class="input_text3" name="password" id="team_name_text" required>
                    
                </div>
                
            </div>
            <input type="submit" value="ล็อคอิน" class="submut_btn2">
            <p class="p_text">${notCont}</p>
            </form>
            
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
    
</body>
</html>