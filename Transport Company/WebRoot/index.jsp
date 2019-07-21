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
              <li><a href="contactus.jsp">CONTACT US</a></li>
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
            <div id="gbox-bg">
              <div id="gbox-grd">
                <h2>WELCOME TO OUR TRUCK TRACKING COMPANY</h2>
				<p>You can find All the Information regarding our transport company's services ,Trucks and can contact us to get your vehicle installed in our company</p>

<p>You can find how many vehicle is on road through my company to your city or closest to it</p>
                <div id="features">
                  <h2>FEATURED SERVICES</h2>
                  <ul>
                    <li><a href="http://www.javatpoint.com">Free Core java tutorial</a></li>
					<li><a href="http://www.javatpoint.com">Jsp tutorial</a></li>
                    <li><a href="http://www.javatpoint.com">Free Android Tutorial</a></li>
                    <li><a href="http://www.javatpoint.com">Struts and Hibernet Tutorial</a></li>
                    
                  </ul>
                  <ul>
				  	<li><a href="http://www.javatpoint.com">More Project</a></li>
                    <li><a href="http://www.cstpoint.com">C,C++ Tutorial</a></li>
					<li><a href="http://www.javatpoint.com/forum/">The forum</a></li>
                    <li><a href="http://www.cstpoint.com">Html,Sql Tutorial</a></li>
                  </ul>
                  <div class="clear"> </div>
                </div>
                
                <div id="newsletter">
                  <h2>Login Form</h2>
                  
                  <%
                  if(request.getAttribute("notlogin_msg")!=null){
                  
                  out.print(request.getAttribute("notlogin_msg"));
                  }
                   %>
                  
                  <%
                  if(request.getAttribute("Error")!=null){
                  
                  out.print(request.getAttribute("Error"));
                  }
                   %>
                  <form action="loginprocess.jsp" method="get" accept-charset="utf-8">
                   <select name="branch">
                   <option >Select a Branch</option>
                    <option>Kanpur</option>
                    <option>Agra</option>
					<option value="Delhi">Delhi</option>
					<option value="Ghaziabad">Ghaziabad</option>
                    </select><br/>
                    Username:<input type="text" name="username"/>
                    Password:<input type="password" name="userpass"/>
                    <input type="submit" value="Login"><a href="test.jsp">Login as Admin</a>
                  </form>
                  <p><a href="http://www.javatpoint.com">Click here for details</a></p>
                </div>
                <div id="events">
                  <h2>FEATURED EVENTS</h2>
                  <ul>
                  <li><a href="http://www.javatpoint.com">More Project</a></li>
                    <li><a href="http://www.cstpoint.com">C,C++ Tutorial</a></li>
					<li><a href="http://www.javatpoint.com/forum/">The forum</a></li>
                    <li><a href="http://www.cstpoint.com">Html,Sql Tutorial</a></li>
                  </ul>
                </div>
                <div class="clear"> </div>
                
              </div>
            </div>
            <div id="gbox-bot"> </div>
          </div>
		   
          <div id="greybox" >
             
			  <img src="images/pic_1.jpg" width="164" height="167"></td><td> <img src="images/pic_2.jpg" width="164" height="167">
			  <img src="images/pic_3.jpg" width="164" height="167"></td><td> <img src="images/pic_4.jpg" width="164" height="167">
			  <img src="images/pic_5.jpg" width="164" height="167"></td><td> <img src="images/pic_6.jpg" width="164" height="167">
			  <img src="images/pic_7.jpg" width="164" height="167"></td><td> <img src="images/pic_8.jpg" width="164" height="167">
			
          </div>
		  
        </div>
      </div>
    </div>
  </div>
  
  <div id="copyright">
   Copyright 2012 ,All Rights Reserved,For more information plz visit <a href="http://www.javatpoint.com">Click Here </a>
  </div>

</body>
</html>
