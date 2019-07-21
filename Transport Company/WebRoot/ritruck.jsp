
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>       

 <jsp:include page="header.jsp"></jsp:include>
            <div id="gbox-bg">
             <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WELCOME TO OUR TRUCK TRACKING COMPANY</h2>
				<marquee dir="ltr"><font style="color: navy;">Delhi-Kanpur,Agra-Kanpur,Agra-Ghaziabad,Kanpur-Delhi........</font></marquee>             
             <br/>
              <% 
                Class.forName("oracle.jdbc.driver.OracleDriver");
	            Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
                PreparedStatement ps= con.prepareStatement("Select tmodel,tno,malik,tfrom,tto,idate from tinstall where rownum <7 order by id desc");
               	ResultSet rs= ps.executeQuery();
               	out.print("<table cellspacing='3',cellpadding='3' border='3'>");
               	out.print("<tr><th><center>Model<center></th><th><center>Number</center></th><th>Owner</th><th><center>Route</center></th><th>Joining Date</th></tr>");
               	while(rs.next()){
               	out.print("<tr>");
               			out.print("<td>"+rs.getString(1)+"</td>");
               			out.print("<td>"+rs.getString(2)+"</td>");
               			out.print("<td>"+rs.getString(3)+"</td>");
               			out.print("<td>"+rs.getString(4)+rs.getString(5)+rs.getString(4)+"</td>");
               	   		out.print("<td>"+rs.getDate(6)+"</td>");	
               	    	out.print("</tr>");
               	}
               out.print("</table>");
                %>
               
             
             <div id="gbox-grd">
                
				
				
                <br/>
               
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
                 </div>
                <div id="newsletter">
			     
                  
                <p><a href="http://www.javatpoint.com">Click here for details</a></p>
                </div>
                <div class="clear"> </div>
                
             
            </div>
            <jsp:include page="footer.html"></jsp:include>