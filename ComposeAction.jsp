<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.aoc.dto.MessageDTO,com.dts.aoc.dao.MessageDAO,com.dts.core.util.LoggerManager,com.dts.core.util.DateWrapper" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ComposeAction.jsp' starting page</title>
    
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
     String target = "userhome.jsp?status=Message sent failed";
     try
     {
     	String from = request.getParameter("from");
     	String to = request.getParameter("to");
     	String subject = request.getParameter("subject");
     	String message = request.getParameter("message");
     
   		MessageDTO messagedto = new MessageDTO();
     	messagedto.setFrom(from);
     	messagedto.setTo(to);
     	messagedto.setSenddate(DateWrapper.parseDate(new Date()));
     	messagedto.setSubject(subject);
     	messagedto.setMessage(message);
     
     	boolean flag = new MessageDAO().sendMessage(messagedto);
     	
     	if(flag)
       		target = "userhome.jsp?status=Your message has been sent";
     	else
       		target = "userhome.jsp?status=Message sent failed";
      }
      catch(Exception e)
      {
        LoggerManager.writeLogSevere(e);
      }
      
     	RequestDispatcher rd = request.getRequestDispatcher(target);
     	rd.forward(request,response);
        
      %>
  </body>
</html>
