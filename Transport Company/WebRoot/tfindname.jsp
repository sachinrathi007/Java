<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
System.out.print(n);
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");

PreparedStatement ps=con.prepareStatement("select tmodel,tno,iname,malik,mobile,tfrom,tto from tinstall where tno ='"+n+"' ");
//ps.setString(1,n);
out.print("<br>");
ResultSet rs=ps.executeQuery();



while(rs.next()){
out.print("<table border='2' cellpadding=2 id='myTable'>");
out.print("<tr><th>Model</th><td>"+rs.getString(1)+"</td></tr>");
out.print("<tr><th>Truck No.</th><td>"+rs.getString(2)+"</td></tr>");
out.print("<tr><th>Insurance</th><td>"+rs.getString(3)+"</td></tr>");
out.print("<tr><th>Owner</th><td>"+rs.getString(4)+"</td></tr>");
out.print("<tr><th>Mobile</th><td>"+rs.getString(5)+"</td></tr>");
out.print("<tr><th>Route</th><td>"+rs.getString(6)+rs.getString(7)+rs.getString(6)+"</td>");
out.print("</tr>");
out.print("</table>");
out.print("<br/>");

}

con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>