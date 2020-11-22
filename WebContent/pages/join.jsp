<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="../css/join.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="join-wrapper">
            <div class="header"></div>

            <div class="main">
                <div class="content_login">
                    <h2 class="title">회원가입</h2>
                    <span>회원정보를 입력해주세요.</span>
                    <!-- <hr class="line_top"> -->
                    <form id="join_form" name="user_form" method="post" action="http://localhost:9988/ProjectOne/Join.jsp">
                        <ul class="form_list">
                            <li>
                                <!-- 아이디 -->
                                <label for="login_id" class="label1">
                                    <span>ID를 입력해주세요.</span>
                                    <span>띄어쓰기없이 영/숫자 6~14자</span>
                                </label>
                                <input type="text" id="login_id" name="login_id" maxlength="14">
                                <div id="idMsg" class="ability_chk">
                                    ...........
                                </div>                             
                            </li>
                            <li> 
                                <!-- 비밀번호 -->
                                <label for="login_pwd1" class="label1">
                                    <span>비밀번호를 입력해주세요.</span>
                                    <span>띄어쓰기없이 영/숫자 6~14자</span>
                                </label>   
                                <input type="password" name="pwd1" id="login_pwd1" maxlength="15">
                                <div id="pwd1Msg" class="ability_chk"></div>
                            </li>
                            <li>
                                <!-- 이름 -->
                                <label for="user_name" class="label1"><span>이름을 입력해주세요.</span></label>
                                <input type="text" name="name" id="user_name" maxlength="30">
                                <div id="userNameMsg" class="ability_chk"></div>
                            </li>
                            <li>
                                <!-- 휴대폰 -->
                                <label for="user_phoneNum" class="label1"><span>휴대폰번호를 입력해주세요.</span></label>
                                <input type="text" name="user_phoneNum" id="user_phoneNum" maxlength="30">
                                <div id="userNameMsg" class="ability_chk"></div>
                            </li>
                            <li>
                                <!-- 주소 -->
                                <input type="text" name="user_adr1" readonly = "true" id="user_adr1" maxlength="40" placeholder="21500">
                                <button id="bt_adr">주소검색하기</button>
                                
                                <input type="text" name="user_adr2" readonly = "true" id="user_adr2" maxlength="40" placeholder="인천 남동구 백범로467번길 51 (간석동, OO빌라)">
                                
                                <label for="user_adr3" class="label1">
                                    <span>상세주소를 입력해주세요.</span>
                                </label>
    
                                <input type="text" name="user_adr3" id="user_adr3" maxlength="40">
    
                            </li>
                            <li>
                                <!-- 이메일 -->
                                <label for="user_email1" class="label1" >
                                    <span>이메일을 입력해주세요.</span>
                                </label>
                                <label for="user_email2" class="label1" ></label>
    
                                <input type="text" name="user_email1" id="user_email1" maxlength="30">
                                <span id="sp"></span>
                                
                                <input type="text" name="user_email2" id="user_email2" maxlength="30">
                                <button id="bt_email">이메일인증</button>
    
                                <div id="userEmailMsg" class="ability_chk"></div>
                            </li> 
    
                        </ul>
                        <input type="submit" value="회원가입">
                        <img src='data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7' onload='join();this.parentNode.removeChild(this);'>
                    </form>  
                    
                </div>  
            </div>
            
        </div>

        <script>
            function join() {
                $(".main .content_login input").focus(function () {
                    var read = $(this).prop("readonly");
                    if (!read) {
                        $(this).parent().find(".label1").css("display", "none")
                    }
                }).blur(function () {
                    var value = $(this).val()
                    if (value == "")
                        $(this).parent().find(".label1").css("display", "block")
                });
                
                $("#user_email1,#user_email2").focus(function () {
                    $("#sp").html("@")
                }).blur(function () {
                    $("#sp").html(" ")
                });
            }            
        </script>
    </body>
</html>
