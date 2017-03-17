<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.dts.aoc.dao.EventsDAO,com.dts.aoc.dto.EventsDTO,com.dts.dae.dao.SecurityDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'RegisterAction.jsp' starting page</title>

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
		<br>
		<%
		 String target = "adminhome.jsp?status=Event Registration Failed";
		try
		{
	    EventsDTO eventdto = new EventsDTO();
		 
		eventdto.setEventname(request.getParameter("eventname"));
		eventdto.setEventdate(request.getParameter("eventdate"));
		eventdto.setEventtime(request.getParameter("eventtime"));
		eventdto.setVenue(request.getParameter("venue"));
		eventdto.setDescription(request.getParameter("eventdesc"));
		eventdto.setStatus(request.getParameter("status"));
		
		boolean flag = new EventsDAO().registerEvent(eventdto);
       
         if(flag)
            target = "adminhome.jsp?status=Event Registration Success";
         else  
            target = "adminhome.jsp?status=Event Registration Failed"; 
            }catch(Exception e){}
        RequestDispatcher rd = request.getRequestDispatcher(target);
        rd.forward(request,response);    
    %>
	</body>
</html>
