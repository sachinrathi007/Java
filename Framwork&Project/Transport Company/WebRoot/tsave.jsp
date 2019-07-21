<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{

String model=request.getParameter("model");
String tno=request.getParameter("tno");

String insurance=request.getParameter("insurance");
String cname=request.getParameter("cname");
String owner=request.getParameter("owner");
String mobile=request.getParameter("mobile");
String from=request.getParameter("from");
String to=request.getParameter("to");
java.util.Date sqdate=Calendar.getInstance().getTime();
	java.sql.Date dat =new java.sql.Date(sqdate.getTime());
	

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
PreparedStatement ps=con.prepareStatement("insert into tinstall(tmodel,tno,insurance,iname,malik,tfrom,tto,idate,mobile) values(?,?,?,?,?,?,?,?,?)");

ps.setString(1,model);
ps.setString(2,tno);
ps.setString(3,insurance);
ps.setString(5,owner);
ps.setString(4,cname);
ps.setString(6,from);
ps.setString(7,to);
ps.setDate(8,dat);
ps.setString(9,mobile);
int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="admin.jsp"></jsp:forward>
