<%@page import="java.sql.*"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>


<%
	SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy");
	Date orderDate=new Date();
	String order1=formatter.format(orderDate);



	String fname=(String)request.getParameter("firstname");
	String lname=(String)request.getParameter("lastname");
	String book=(String)request.getParameter("book");
	String book_id=(String)request.getParameter("bid");
	String subject=(String)request.getParameter("subject");
	
	try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		
			Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		
			Statement stmt=con.createStatement();
			
			String query=" ";
			int i=0;
			
			query="insert into contact(Fname,Lname,Book,Book_id,Message,DateMsg)values('"+fname+"','"+lname+"','"+book+"','"+book_id+"','"+subject+"','"+order1+"')";
			
		//	System.out.println(query);
			i=stmt.executeUpdate(query);
			
			if(i!=0)
			{
				session.setAttribute("msg","Thank you for your precious time...<br> We will initiate your request under few hours... ");
			}
				
			
			con.close();
			response.sendRedirect("contactUs.jsp");
			
		}
	catch(Exception ex)
	{
		out.println("Contact Error:::"+ex);
	}
	

%>