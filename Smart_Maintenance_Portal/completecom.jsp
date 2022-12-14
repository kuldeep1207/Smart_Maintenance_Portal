<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
   <%@ page import="com.smart.db.*" %>
<%@ page import="com.smart.maint.*"  %>   
<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Forms :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">SMART MAINTAINANCE PORTAL</a>
            </div>
            <!-- /.navbar-header -->
             <ul class="nav navbar-nav navbar-right">
				
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/1.png"><span class="badge">9</span></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header text-center">
							<strong>Account</strong>
						</li>
						
						<li class="m_2"><a href="adlogin.html"><i class="fa fa-lock"></i> Logout</a></li>	
	        		</ul>
	      		</li>
			</ul>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                           <li>
                            <a href="vdc.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>VIEW COMPLAINTS</a>
                        </li>
                       <li>
                            <a href="deadlinetask.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>VIEW DEADLINE TASKS</a>
                        </li>
                      
                         <li>
                            <a href="pendingcom.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>VIEW PENDING COMPLAINTS</a>
                        </li>
                        <li>
                            <a href="completecom.jsp"><i class="fa fa-dashboard fa-fw nav_icon"></i>VIEW COMPLETED COMPLAINTS</a>
                        </li>
                      
                   
                   
                       
                      
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="graphs">
	     <div class="xs">
  	       <h3>VIEW COMPLETED COMPLAINTS</h3>
  	       <div class="table-responsive">
      <table class="table table-bordered">
        <thead>
          <tr>
           
            <th>ID</th>
            <th>TITLE</th>
            <th>DESC</th>
            <th>DEPT</th>
            <th>DATE</th>
            <th>IMAGE</th>
            <th>STATUS</th>
           
              
           </tr>
        </thead>
        <% 
        try
		{
			Connection con = DbConnect.connect();
			PreparedStatement ps2=con.prepareStatement("select * from addcom where status=? and department=?");
			ps2.setString(1,"Completed");
			ps2.setString(2,GetSet.getDept());
			ResultSet rs=ps2.executeQuery();
			
			while(rs.next())
			{
			%>	
			<tr>
				<td><%=rs.getInt("id") %></td>
	            <td><%=rs.getString("title") %></td>
	            <td><%=rs.getString("desc") %></td>
	            <td><%=rs.getString("department") %></td>
	            <td><%=rs.getString("date") %></td>
	            <td><%=rs.getString("image") %></td>
	            <td><%=rs.getString("status") %></td>
	           
	          </tr>
  <% 
			}
		}
        catch(Exception e)
        {
        	e.printStackTrace();
        }
        %>
        
			
			
        
        </tbody>
      </table>
    </div><!-- /.table-responsive -->			
					
  	         
  <div class="copy_layout">
      <p>Copyright ? 2015 Modern. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">kuldeep</a> </p>
  </div>
  </div>
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>