<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String from=request.getParameter("from");
String to=request.getParameter("to");

if(to.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");

PreparedStatement ps=con.prepareStatement("select tmodel,tno,malik,mobile,iname from tinstall where tfrom='"+from+"' and tto='"+to+"'");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();

out.print("<table border='5' cellspacing=5 cellpadding=2 id='myTable'>");
out.print("<tr><td>Model</td><td><B>Truck No.</B></td><td><B>Owner</B></td><td><B>Mobile</B></td><td><B>Insurance</B></td></tr>");

while(rs.next()){
out.print("<tr><td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("<td>"+rs.getString(4)+"</td>");
out.print("<td>"+rs.getString(5)+"</td>");
out.print("</tr>");
}
out.print("</table>");
con.close();

}catch(Exception e){e.printStackTrace();}
}//end of if
%>