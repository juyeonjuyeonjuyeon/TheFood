<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("Jsp");
	request.setCharacterEncoding("utf-8");
	//String menu = request.getParameter("menu");
	String[] menu = request.getParameterValues("menu");
	
	System.out.println("array size : " + menu.length);
	
	/* for(String m : menu){
		System.out.println(m);
	}
 */	
	 for(int i = 0; i < menu.length; i++){
			System.out.println(menu[i]);
	} 
 
 	ArrayList<String> menuList = new ArrayList<>();
 	for(String m : menu){
 		menuList.add(m);
 	}
 	//Random 사용 할 수 있게 선언
	Random random = new Random();
 	//랜덤 갯구 설정해서 하나의 번호를 뽑기
	int rndNum = random.nextInt(menuList.size());
 	String todayMenu = menuList.get(rndNum); 
 	
 	
 	//번호를 index(rndNum)로 하여 안에 잇는 문자열 출력
 	//확인용(to delete)
 	//System.out.println("random - " + rndNum);
 	//리스트에 담겨 있는 데이터 중ㅇ에 하나를 출력
 	//out.println(menuList.get(rndNum));
 	
	
 	/* double randomValue = Math.random(); 
 	int index = (int)(randomValue * menu.length) - 1;
 	
 	System.out.println("Today is " + menu[index]);
 	String todayFood = menu[index]; */
 	
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	 body{
	 	text-align:center;
	 	background : #1f2742;
	 	color:white;
	 }
	 
	 .dish{
	 	border: 20px double gold;
	 	border-radius : 50%;
	 	width : 300px;
	 	height : 100px;
	 	padding-top : 100px;
	 	padding-bottom : 100px;
	 	margin : auto;
	 	background : white;
	 	color:black;
	 	box-shadow: gray 5px 5px 5px;
	 	
			
	 }
	</style>
<title>Today's meal</title>
</head>
<body>
	<h1>오늘 음식은?</h1>
	<div class="dish">
		<h1><%=todayMenu%></h1>
	</div>
	
</body>
</html>