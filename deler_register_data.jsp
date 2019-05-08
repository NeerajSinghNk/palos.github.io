<%@page import="java.sql.*"%>

<%
	System.out.println("deler_register_data.jsp");
	
	String shop=(String)request.getParameter("sname");
	String email=(String)request.getParameter("email");
	String dob=(String)request.getParameter("dob");
	String phone=(String)request.getParameter("phone");
	String state=(String)request.getParameter("state");
	String city=(String)request.getParameter("city");
	String pin=(String)request.getParameter("pin");
	String pass=(String)request.getParameter("password");
	String address=(String)request.getParameter("address");
	
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from seller_register where shop_email='"+email+"'");
		int count=0;
		while(rs.next())
			{
				count++;
			}	
		if(count>0)
		{
			System.out.println("Shop E-mail already exists..."+email);
			session.setAttribute("email","ERROR:Email already exists...Use another Email...");
		}
		else
		{
			int i=0;
			String query=" ";
			query="insert into seller_register(Shop_name,Shop_email,Password,Phone,DOB,State,City,PIN,Street_address)values('"+shop+"','"+email+"','"+pass+"','"+phone+"','"+dob+"','"+state+"','"+city+"','"+pin+"','"+address+"')";
			System.out.println(query);
			i=stmt.executeUpdate(query);
			session.setAttribute("email","Shop Registration successfully..."+email);
		}
		con.close();
		response.sendRedirect("delar_register.jsp");
	}
	catch(Exception ex)
	{
		out.println(ex);
	}
	
%>