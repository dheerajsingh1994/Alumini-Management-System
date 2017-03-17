<%
if(session.getAttribute("role")==null || session.getAttribute("user")==null)
{
   RequestDispatcher rd = request.getRequestDispatcher("LoginForm.jsp?status=Session Expired");
   rd.forward(request,response);
}      
%>

<script language="JavaScript">
<!--
function mmLoadMenus() {
  if (window.mm_menu_1224101012_0) return;
      window.mm_menu_1224101012_0 = new Menu("root",131,25,"Georgia, Times New Roman, Times, serif",12,"#993333","#333366","#CCA631","#E7D398","left","middle",3,0,500,-5,7,true,false,true,0,true,false);
  mm_menu_1224101012_0.addMenuItem("New&nbsp;Event","location='Newevent.jsp'");
  mm_menu_1224101012_0.addMenuItem("Edit&nbsp;Event&nbsp;Details","location='ViewEventsDetails.jsp'");
   mm_menu_1224101012_0.fontWeight="bold";
   mm_menu_1224101012_0.hideOnMouseOut=true;
   mm_menu_1224101012_0.bgColor='#FCFBFA';
   mm_menu_1224101012_0.menuBorder=0;
   mm_menu_1224101012_0.menuLiteBgColor='#E1E9DA';
   mm_menu_1224101012_0.menuBorderBgColor='';
window.mm_menu_1224101649_0 = new Menu("root",93,25,"Georgia, Times New Roman, Times, serif",12,"#993333","#333366","#CCA631","#E7D398","left","middle",3,0,500,-5,7,true,false,true,0,true,false);
  mm_menu_1224101649_0.addMenuItem("New&nbsp;Job","location='Newjob.jsp'");
  mm_menu_1224101649_0.addMenuItem("Edit&nbsp;Details","location='ViewVacanciesDetails.jsp'");
   mm_menu_1224101649_0.fontWeight="bold";
   mm_menu_1224101649_0.hideOnMouseOut=true;
   mm_menu_1224101649_0.bgColor='#FCFBFA';
   mm_menu_1224101649_0.menuBorder=3;
   mm_menu_1224101649_0.menuLiteBgColor='#E1E9DA';
   mm_menu_1224101649_0.menuBorderBgColor='#FFFFFF';
  window.mm_menu_1224101802_0 = new Menu("root",112,25,"Georgia, Times New Roman, Times, serif",12,"#993333","#333366","#CCA631","#E7D398","left","middle",3,0,500,-5,7,true,false,true,0,true,false);
  mm_menu_1224101802_0.addMenuItem("student&nbsp;Details","location='ViewStudentReport.jsp'");
  mm_menu_1224101802_0.addMenuItem("Job&nbsp;Details","location='ViewVacanciesReport.jsp'");
  mm_menu_1224101802_0.addMenuItem("Events&nbsp;Details","location='ViewEventsReport.jsp'");
   mm_menu_1224101802_0.fontWeight="bold";
   mm_menu_1224101802_0.hideOnMouseOut=true;
   mm_menu_1224101802_0.bgColor='#FCFBFA';
   mm_menu_1224101802_0.menuBorder=3;
   mm_menu_1224101802_0.menuLiteBgColor='#E1E9DA';
   mm_menu_1224101802_0.menuBorderBgColor='#FFFFFF';
   
   window.mm_menu_1224122939_0 = new Menu("root",134,25,"Georgia, Times New Roman, Times, serif",12,"#993333","#333366","#CCA631","#E7D398","left","middle",3,0,500,-5,7,true,false,true,0,true,false);
  mm_menu_1224122939_0.addMenuItem("Change&nbsp;Password","location='Changepassword.jsp?role=admin'");
  mm_menu_1224122939_0.addMenuItem("Change&nbsp;Question","location='Changequestion.jsp?role=admin'"); 
   mm_menu_1224122939_0.fontWeight="bold";
   mm_menu_1224122939_0.hideOnMouseOut=true;
   mm_menu_1224122939_0.bgColor='#FCFBFA';
   mm_menu_1224122939_0.menuBorder=0;
   mm_menu_1224122939_0.menuLiteBgColor='#E1E9DA';
   mm_menu_1224122939_0.menuBorderBgColor='#777777';

mm_menu_1224101802_0.writeMenus();
} // mmLoadMenus()
//-->
</script>


<script language="JavaScript" src="scripts/mm_menu.js"></script>
<script language="JavaScript1.2">mmLoadMenus();</script>
<a href="adminhome.jsp">Home</a> | <a href="#" name="link7" id="link1" onmouseover="MM_showMenu(window.mm_menu_1224101012_0,0,25,null,'link7')" onmouseout="MM_startTimeout();">Events</a> | <a href="#" name="link6" id="link2" onmouseover="MM_showMenu(window.mm_menu_1224101649_0,0,25,null,'link6')" onmouseout="MM_startTimeout();">Opportunities</a> | <a href="#" name="link5" id="link3" onmouseover="MM_showMenu(window.mm_menu_1224101802_0,0,25,null,'link5')" onmouseout="MM_startTimeout();">Reports</a> | <a href="#" name="link4" id="link4" onmouseover="MM_showMenu(window.mm_menu_1224122939_0,0,25,null,'link4')" onmouseout="MM_startTimeout();">Security</a> | <a href="LogoutAction.jsp">Logout</a>