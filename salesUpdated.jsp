
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<title>Sales Report</title>
	<style>
		body {
			background-color: #1a237e;
			color: white;
		}
		table {
			border-collapse: collapse;
			width: 100%;
		}
		th, td {
			text-align: left;
			padding: 8px;
		}
		th {
			background-color: #1565c0;
		}
		tr:nth-child(even) {
			background-color: #0d47a1;
		}
		.total {
			background-color: #1e88e5;
			font-weight: bold;
		}
	</style>
</head>
<body>
	<h1><em>Gabe's Gateway</em></h1>
	<form action="sales_report.jsp" method="get">
		<label for="date_range">Select Date Range:</label>
		<select id="date_range" name="date_range">
			<option value="today">Today</option>
			<option value="yesterday">Yesterday</option>
			<option value="last_7_days">Last 7 Days</option>
			<option value="last_30_days">Last 30 Days</option>
			<option value="this_month">This Month</option>
			<option value="last_month">Last Month</option>
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
	<table>
		<thead>
			<tr>
				<h1>Today's Sales as of <em>4/2/2023</em></h1>
	<table>
		<thead>
			<tr>
				<th>Product Name</th>
				<th>Price</th>
				<th>Quantity Sold</th>
				<th>Brand</th>
				<th>Date Sold</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>iPhone 14 Pro Max</td>
				<td>$1099.99</td>
				<td>5</td>
				<td>Apple</td>
				<td>05/25/2022</td>
			</tr>
			<tr>
				<td>Galaxy S23</td>
				<td>$799.99</td>
				<td>3</td>
				<td>Samsung</td>
				<td>04/2/2023</td>
			</tr>
			<tr>
				<td>X75K 4K HDR LED Google TV</td>
				<td>$579.99</td>
				<td>1</td>
				<td>Sony</td>
				<td>04/2/2023</td>
			</tr>
			<tr>
				<td>Q60B QLED 4K Smart Tizen TV</td>
				<td>$799.99</td>
				<td>4</td>
				<td>Samsung</td>
				<td>04/2/2023</td>
			</tr>
			<tr>
				<td>Apple Watch Series 8</td>
				<td>$359.00</td>
				<td>8</td>
				<td>Apple</td>
				<td>04/2/2023</td>
		    </tr>
		    <tr>
				<td>Sense 2</td>
				<td>$249.99</td>
				<td>12</td>
				<td>Fitbit</td>
				<td>04/2/2023</td>
			</tr>
			<tr>
				<td>Swift 3</td>
				<td>$809.99</td>
				<td>4</td>
				<td>Acer</td>
				<td>04/2/2023</td>
			</tr>
			<tr class="total">
				<td>Total Revenue</td>
				<td>
					<%
					float price1 = 1099.99f *5f;
					float price2 = 799.99f * 3f;
					float price3 = 579.99f * 1f;
					float price4 = 799.99f * 4f;
					float price5 = 359.00f * 8f;
					float price6 = 249.99f * 12f;
					float price7 = 809.99f * 4f;
					float total = price1 + price2 + price3 + price4 + price5 + price6 + price7;
					out.print("$" + total);
					%>
					
				
			
	%>
