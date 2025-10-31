<!-- Here we add import attribute of java.sql.* in page Directive -->

<%@ page import="java.sql.*" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Add Declaration block -->
<!--Declration block ends up translated Serlvets to class level  -->
<!-- Here we are Making connection to DB and inserting the data -->
<!-- Declaration block consist of Connection and PreparedStatment -->
<%!Connection con;
	PreparedStatement ps;

	public void jspInit() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "Root@1234");
			ps = con.prepareStatement("insert into account value(?,?,?,?)");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void jspDestroy() {
		try {
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}%>

<!-- After Having Connection, Now we need to accept the request -->
<!-- Inorder to accept first we need Scriplet Block -->
<!-- By using Implicit Object ( request) -->
<%
int accnum = Integer.parseInt(request.getParameter("accno"));
String lastName = request.getParameter("lastname");
String firstName = request.getParameter("firstname");
int bal = Integer.parseInt(request.getParameter("bal"));

/* Now we need to bind the Parameter to PreparedStatement */
ps.setInt(1, accnum);
ps.setString(2, lastName);
ps.setString(3, firstName);
ps.setInt(4, bal);

ps.executeUpdate();
%>

<!-- After Data is inserted to DB, We need to Show Result Page -->
<!-- For That we can also redirect to New/Existing HTML Page -->
<!-- By using Include Directive -->
<%@ include file="openaccount.html"%>