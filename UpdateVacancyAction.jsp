<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.dts.aoc.dao.VacancyDAO,com.dts.aoc.dto.VacancyDTO,com.dts.dae.dao.SecurityDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>University Search Engine</title>

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
		String target = "adminhome.jsp?status=Vacancy Updation Failed";
        try{ 
         
	    VacancyDTO vacdto = new VacancyDTO();
		
		vacdto.setVacancyid(Integer.parseInt(request.getParameter("vacancyid"))); 
		vacdto.setCompanyname(request.getParameter("compname"));
		vacdto.setCompanyprofile(request.getParameter("profile"));
		vacdto.setVacancyposition(request.getParameter("vacposition"));
		vacdto.setJobdesc(request.getParameter("jobdesc"));
		vacdto.setCategory(request.getParameter("category"));
		vacdto.setLocation(request.getParameter("location"));
		vacdto.setDesiredprofile(request.getParameter("desiredprofile"));
		vacdto.setDesiredexp(request.getParameter("exp"));
		vacdto.setCreateddate(request.getParameter("cdate"));
		vacdto.setExpirydate(request.getParameter("expdate"));
		vacdto.setContactperson(request.getParameter("contperson"));
		vacdto.setDesignation(request.getParameter("desig"));
		vacdto.setPhoneno(request.getParameter("phone"));
		vacdto.setEmail(request.getParameter("email"));
		
		boolean flag = new VacancyDAO().updateVacancy(vacdto);
        if(flag)
            target = "adminhome.jsp?status=Vacancy Successfully Updated";
         else  
            target = "adminhome.jsp?status=Vacancy Updation Failed"; 
       }catch(Exception e){}
        RequestDispatcher rd = request.getRequestDispatcher(target);
        rd.forward(request,response);    
    %>
	</body>
</html>
