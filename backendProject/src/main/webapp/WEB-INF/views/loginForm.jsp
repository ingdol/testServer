<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 폼</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/login.js'/>"></script>
		<style type="text/css">
			h1 { text-align:center; }
			#leftJoin { width:100px; }
			#rightJoin { width:100px; }
			.loginBtnBox input { margin:5px; margin-top:20px; } /* 버튼 간격 */
		</style>
		<script type="text/javascript">
			function loginCheck() {
					var id = document.getElementById('id');
					var password = document.getElementById('password');
					
					if(id.value == "") { /* id 값이 빈칸일 경우 */
						alert("아이디를 입력하세요.");
						id.focus();
						return false;	
					}
					if(password.value == "") { /* password 값이 빈칸일 경우 */
						alert("비밀번호를 입력하세요.");
						password.focus();
						return false;	
					}
				}
		</script>
	</head>
	<body>
		<h1>로그인</h1>
		<hr>
		<div id = "login">
			<form id="frmLogin" name="frmLogin">
				<table id="joinTable"  border=0>	
                       	 <!-- ****아이디****  -->
                           <tr>
                               <td id="leftJoin">아이디</td>
                               <td id="rightJoin"><input type="text" name="user_id" id="user_id" size="20"> </td>
                           </tr>
                           <!-- ****비밀번호****  -->
                           <tr>
                               <td>비밀번호</td>
                               <td><input type="password" name="user_pw" id="user_pw" size="20"></td>
                           </tr>
                           <!-- ****로그인, 취소 버튼****  -->
                           <tr>
                           		<td></td>
                           		<td class="loginBtnBox" align="center">
                                   <input type="submit"  value="로그인">
                                   <input type="reset" value="취    소">
                               </td>
                            </tr>
                         </table>
				</form>
			</div>
	</body>
</html>