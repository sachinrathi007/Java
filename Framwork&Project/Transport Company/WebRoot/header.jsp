<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<title>Transport Company</title>
	<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
	
</head>

<body>

  <div id="outer">
    <div id="wrapper">
      <div id="body-bot">
        <div id="body-top">
          <div id="logo">
            <h1>TRANSPORT COMPANY</h1>
            <p>We care about your cargo</p>
          </div>
          <div id="nav">
            <ul>
              <li><a href="home.jsp">HOME</a></li>
              <li><a href="ritruck.jsp">RECENTLY INSTALLED TRUCKS</a></li>
              <li><a href="status.jsp">STATUS</a></li>
              <li><a href="towards.jsp">TOWARDS HERE</a></li>
              <li><a href="services.jsp">SERVICES</a></li>
              <% if(session.getAttribute("admin")!=null){
 out.print("<li><a href='contacted.jsp'>CONTACT US</a></li>");
}
else{
out.print("<li><a href='contactus.jsp'>CONTACT US</a></li>");

}
            %>
            <%
            if(session.getAttribute("islogin")!=null){
            out.print("<li><a href='logout.jsp'>Logout</a></li>");
            }
            else{
            out.print("<li><a href='index.jsp'>Login</a></li>");
            }
             %>
            </ul>
            <div class="clear"> </div>
          </div>
		  
		  <div id="page-title">
				  <span>
					 <h2 style="color:#4f7202;">MOST CONVINIENT & RELIABLE</h2>
					 <h2 style="color:#4f7202;">TRANSPORT SERVICES</h2>
				   </span>
				 
				   <p>
					<a href="http://www.javatpoint.com">Click here for details</a>
				  </p>
		  </div>
		  
          <div id="gbox">
            <div id="gbox-top"> </div>
