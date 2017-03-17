<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.aoc.dto.AcadamicDTO,com.dts.aoc.dao.AcadamicDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AcadamicdetailsAction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%
     String target = "index.jsp?status=Invalid username and password"; 
     try{
    AcadamicDTO adto = new AcadamicDTO();
    adto.setLoginname(request.getParameter("loginname"));
    adto.setYearofpass(Integer.parseInt(request.getParameter("yearofpass")));
    adto.setYearofjoining(Integer.parseInt(request.getParameter("yearofjoin")));
    adto.setProfession(request.getParameter("profession"));
    adto.setRollno(request.getParameter("rollno"));
    
   
    boolean flag = new AcadamicDAO().registerAcadamicDetails(adto);
    
    if(flag)
       target = "userhome.jsp?status=Welcome "+request.getParameter("loginname");
    }catch(Exception e){}   
    RequestDispatcher rd = request.getRequestDispatcher(target);
    rd.forward(request,response);       
    %>
   
  </body>
</html>
