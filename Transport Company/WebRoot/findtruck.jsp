        <jsp:include page="header.jsp"></jsp:include>

<head>
<script>
var request;
function sendInfo()
{

var v=document.myform.findName.value;
var url="tfindname.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('right').innerHTML=val;
}
}


</script>
</head>

            <div id="gbox-bg">
              <div id="gbox-grd">
  <h2>WELCOME TO OUR TRUCK TRACKING COMPANY</h2>
                <div id="newsletter">
                
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
                  <% 
                  if(request.getAttribute("msg")!=null){
                  out.print(request.getAttribute("msg"));
                  }
                  %>
                  
                  <form name="myform">
                  <table>
					
					
<tr><td><font style="color: navy;">Find Truck:-</font></td><td><input type="text" align="right" name="findName" onkeyup="sendInfo()"></input></td></tr></table>


<a href="create.jsp"><font style="color: navy;"><B>Create New Manager</B></font></a><BR/>
<a href="install.jsp"><font style="color: navy;"><B>Install New Truck</B></font></a>   <br/>               
                  
                  </form>
                 
                </div>
                               <div class="clear"> </div>
        
<div id="right" align="center">
</div>      
                
              </div>
              
        
              
            </div>
            <jsp:include page="footer.html"></jsp:include>