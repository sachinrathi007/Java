
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>        <jsp:include page="header.jsp"></jsp:include>
            <div id="gbox-bg">
              <div id="gbox-grd">
                <h2>WELCOME TO OUR TRUCK TRACKING COMPANY</h2>
				<marquee dir="ltr"><font style="color: navy;">Delhi-Kanpur,Agra-Kanpur,Agra-Ghaziabad,Kanpur-Delhi........</font></marquee>

				<%
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
				PreparedStatement ps= con.prepareStatement("select name,email,phone,message from quizcontact where rownum<7 ");
				ResultSet rs= ps.executeQuery();
				out.print("<table border='3'>");
				out.print("<tr><td>Name</td><td>Email</td><td>Phone</td><td>Message</td></tr>");
				
				while(rs.next()){
				out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
				
				}
				out.print("</table>");
				 %>				
				


                <div id="newsletter">
			        
                 
                  
                  
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
            <jsp:include page="footer.html"></jsp:include>