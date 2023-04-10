<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String id = request.getParameter("productid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String database = "test";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sales</title>
<meta name = "viewport" content = "width=device-width, initial-scale=1.0">
        <meta http-equiv='cache-control' content='no-cache'> 
        <meta http-equiv='expires' content='0'> 
        <meta http-equiv='pragma' content='no-cache'>
        <link rel="stylesheet" href="CSS-Homepage/style.css">
        <link rel="stylesheet" href="CSS-Homepage/navbar.css">
        <link rel="stylesheet" href="CSS-Homepage/intro.css">
        <link rel="stylesheet" href="CSS-Homepage/body-filler.css">
        <link rel="stylesheet" href="CSS-Homepage/title.css">
        <link rel="stylesheet" href="CSS-Homepage/footer.css">
        <link rel="stylesheet" href="CSS-Homepage/news-box.css">
        <link rel="stylesheet" href="CSS-Homepage/design.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>

style="background: #222;">
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
            <a href="index.html" class="navbar-brand" style="font-size: 30px;">
                <img src="images/body-logo.png" alt="" height="50" style="padding-left: 20px;"> GabesGateway
            </a>
            <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#mNav">
                <span class="navbar-toggler-icon"></span>
            </button>
           <div class="collapse navbar-collapse" id="mNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
                <li class="nav-item dropdown">
                    <a href="login.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Inventory</a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-item">
                            <a href="login.jsp">Warehouse 1</a>
                        </li>
                        <li class="dropdown-item">
                            <a href="login.jsp">Text</a>
                        </li>
                        <li class="dropdown-item">
                            <a href="login.jsp">Text</a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item"><a href="login.jsp" class="nav-link">Schedule</a></li>
                <li class="nav-item"><a href="login.jsp" class="nav-link">Sales</a></li>
                <li class="nav-item"><a href="login.jsp" class="nav-link">Contact</a></li>
                <li class="nav-item2"><a href="login.jsp" class="nav-link">Login</a></li>
            </ul>
           </div>
           <div class="btn-div"><button class="btn-1"><a href="login.jsp" style="text-decoration: none; color: white;">Login</a></button></div>
       
        </nav>
       
     
<body>
	
	<h1><em>Gabe's Gateway</em></h1>
	<form action="yesterdaysales.jsp" method="get">
		<label for="date_range">Select Date Range:</label>
		<select id="date_range" name="date_range">
			<option value="today">Today</option>
			<option value="last_30_days">Last 30 Days</option>
		</select>
		<button type="submit">Generate Report</button>
		
		
	</form>
	<% String dateRange = request.getParameter("date_range");
		String reportTitle = "";
		if (dateRange != null) {
			switch (dateRange) {
				case "today":
					reportTitle = "Today's Sales Report";
					break;
				case "yesterday":
					reportTitle = "Yesterday's Sales Report";
					break;
				case "last_7_days":
					reportTitle = "Last 7 Days' Sales Report";
					break;
				case "last_30_days":
					reportTitle = "Last 30 Days' Sales Report";
					break;
				case "this_month":
					reportTitle = "This Month's Sales Report";
					break;
				case "last_month":
					reportTitle = "Last Month's Sales Report";
					break;
				default:
					reportTitle = "Gabe's Gateway Sales Report";
			}
		} else {
			reportTitle = "Gabe's Gateway Sales Report";
		}
	%>
	<h2><%= reportTitle %></h2>
	<style>
	
  table {
 
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid black;
    padding: 5px;
    text-align: left;
  }
</style>




			<tr>
				
	<table>
		<h1>Today's Sales</h1>
<table border="1">
<table style="width: 100%;">
<tr>
<td><strong>Product Name</strong></td>
<td><strong>Sales</strong></td>
<td><strong>Profit</strong></td>

</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/test","root","");
Statement st = con.createStatement();
String str = "select * from product_sales where ProductID < 5";
ResultSet rs = st.executeQuery(str);
while(rs.next()){
%>
<tr>

<td><%=rs.getString("Product_name") %></td>
<td><%=rs.getString("Sales") %></td>
<td><%=rs.getString("Profit") %></td>

</tr>
<%
}
connection.close();
} 
catch (Exception e) {
e.printStackTrace();
}
%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/test","root","");
Statement st = con.createStatement();
String str = "select * from total_sales";
ResultSet rs = st.executeQuery(str);
while(rs.next()){
%>
<tr>

<td><strong>Total Revenue</strong></td>
<td> </td>
<td><strong>$13199.84</strong></td>


</tr>
<%
}
connection.close();
} 
catch (Exception e) {
e.printStackTrace();
}
%>

</table> 






</tr>

				

