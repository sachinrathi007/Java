<jsp:include page="header.jsp"></jsp:include>

            <div id="gbox-bg">
              <div id="gbox-grd">
  <h2>WELCOME TO OUR TRUCK TRACKING COMPANY</h2>
             
                
                  <%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="test.jsp"></jsp:forward>
<%
}
%>
                  
                  <% 
                  if(request.getAttribute("Error")!=null){
                  out.print(request.getAttribute("Error"));
                  }
                  %>
                  
                <form name="myform" action="tsave.jsp">
<table>
<tr><td>Truck Model: </td><td><input type="text" name="model"/></td></tr>
	<tr><td><br></td></tr>
	
<tr><td>Truck No.  </td><td><input type="text" name="tno"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Insurance:</td><td><input type="radio" name="insurance" value="yes"/>Yes<input type="radio" name="insurance" value="no"/>NO</td></tr>
	<tr><td><br></td></tr>
<tr><td>If Yes then Insurance Company Name:<input type="text" name="cname"/></td></tr>
	<tr><td><br></td></tr>
	<tr><td>Owner:</td><td><input type="text" name="owner"/></td></tr>
	<tr><td><br></td></tr>
	
	<tr><td>Mobile:</td><td><input type="text" name="mobile"/></td></tr>
	<tr><td><br></td></tr>
	<tr><td>Route-From:<select name="from" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td><td>To:<select name="to" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Kanpur</option>
					<option>Delhi</option>
					<option>Agra</option>
					</select></td></tr>
		<tr><td></td><td><input type="submit" value="create" style="padding: 2"></td></tr>
	<tr><td><br></td></tr>
</table>
<div id="location" align="left"></div>
</form>
                               <div class="clear"> </div>
                
              </div>
            </div>
            <jsp:include page="footer.html"></jsp:include>