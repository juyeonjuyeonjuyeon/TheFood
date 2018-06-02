<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<style>
	 body{
	 	text-align:center;
	 	background :#1f2742;
	 	color : white;
	 }
	 .wrap{
		 margin:auto;
		 padding:20px;
		 width:500px;
		 border:5px inset #445077;
		 font-size : 20px;
		 font-weight : bold;
		 background :#edd56a;
		 color:black;
	 }
	 .btn{
	 	border : 3px outset yellow;
	 	background : none;
	 	font-size : 20px;
	 	font-weight : bold;
	 	
	 	
	 }
	 li{list-style-type:lower-roman;}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		function add_item(){
	    // pre_set 에 있는 내용을 읽어와서 처리..
	    var div = document.createElement('div');
	    div.innerHTML = document.getElementById('pre_set').innerHTML;
	    document.getElementById('field').appendChild(div);
		}
		var menuNum = 0;
		function appendText() {
			menuNum++;
			var txt1 = "☞ 메뉴  "+ menuNum +" <input type='text' name='menu'><br> ";             
		    $("#field").append(txt1);     
		}
	
	</script>
</head>
<body>
	
	<h1>§오늘의 메뉴§</h1>
	<div class="wrap">
	<form action="today.jsp" method="post">
		<input class="btn" type="button" value=" 메뉴 추가 ▼"  onclick="appendText()">
		<!-- <input type="button" value="메뉴 추가 " onclick="add_item()"> -->
		
		<!-- <div id="pre_set" >
			☞ <input type="text" name="menu" >
		</div> -->
		
		<div id="field"></div>
		<br>
		
		<input class="btn" type="submit" value="오늘 뭐 먹지? ">
	</form>
	</div>
	
	
</body>
</html>