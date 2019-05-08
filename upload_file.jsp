<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Random"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="java.util.Enumeration"%>

<html>
	<head>
		<title>Book Detail</title>
	</head>
	<body>

<%!
	String user;
%>
<%
	System.out.println("upload_file.jsp");
	//String bpath=""+request.getContextPath()+"/book_images";
	MultipartRequest mr=new MultipartRequest(request,"C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/commerce/book_images");
	
	String book_tit=(String)mr.getParameter("book_title");
	String auther_nam=(String)mr.getParameter("auther_name");
	String book_pub=(String)mr.getParameter("book_pub");
	String date_pub=(String)mr.getParameter("date_pub");
	String price=(String)mr.getParameter("price");
	String phone=(String)mr.getParameter("phone");
	String book_desc=(String)mr.getParameter("book_desc");
	String lbd=(String)mr.getParameter("lbd");
	
	//String photo=(String).getParameter("book_photo");
	String book_type=(String)mr.getParameter("book_type");
	
	
	Enumeration files=mr.getFileNames();
	String filename=(String)files.nextElement();
	String photo=mr.getFilesystemName(filename);
	//out.println("file;_"+file1);
	
	int max=50000;
	int min=1;
	Random rd_num=new Random();
	int custo_id=min+rd_num.nextInt(max);
	String cid=Integer.toString(custo_id);
	System.out.println(cid);

	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		Statement stmt=con.createStatement();
		int count=0;
		
			String query=" ";
			int i=0;
			query="insert into books_oldnew(Book_id,Title,Description,Auther,Publisher,Date_published,Last_buy_date,Price,Phone,Book_image,Book_type)values('"+cid+"','"+book_tit+"','"+book_desc+"','"+auther_nam+"','"+book_pub+"','"+date_pub+"','"+lbd+"','"+price+"','"+phone+"','"+photo+"','"+book_type+"')";
			System.out.println(query);
			i=stmt.executeUpdate(query);
			System.out.println("You have successfully Sold your book...");
			session.setAttribute("book_tit","Book selling processs complete..."+book_tit);
		
		con.close();
		response.sendRedirect("sell_old_bookfor_user.jsp");
		
		
	}
	catch(Exception ex)
	{
		out.println("Error:-"+ex);
	}
	
	
%>

	<table border="0" cellspacing="3px" cellpadding="10px">
		<tr>
			

<%
		/*
			Showing books thats user has uploaded.....
			By Neeraj kumar
		
		
		
		String phone1=(String)mr.getParameter("phone");
		try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
				Statement stmt=con.createStatement();
				
				String query=" ";
				query="Select * from books_oldnew where Phone='"+phone1+"'";
				System.out.println(query);
				ResultSet rs= stmt.executeQuery(query);
				int count=0;
				while(rs.next())
				{
					String bid=(String)rs.getString("Book_id");
					String title=(String)rs.getString("Title");
					String desc=(String)rs.getString("Description");
					String auth=(String)rs.getString("Auther");
					String pub=(String)rs.getString("Publisher");
					String datepub=(String)rs.getString("Date_published");
					String lbd1=(String)rs.getString("Last_buy_date");
					String price1=(String)rs.getString("Price");
					String phone2=(String)rs.getString("Phone");
					String bkimage=(String)rs.getString("Book_image");
					String btype=(String)rs.getString("Book_type");
					
					
					if(count==3)
					{
						out.println("</tr><tr>");
						count=0;
					}
					count++;
					
		%>
			<div class="">	
			<td>
				<img src="book_images//<%=bkimage%>" height="160" width="160"><br>
				<b>Book Id:-</b><%=bid%><br>
				<b>Title:-</b><%=title%><br>
				<b>Auther:-</b><%=auth%><br>
				<b>Publisher:-</b><%=pub%><br>
				<b>Date Published:-</b><%=datepub%><br>
				<b>Last Buy Date:-</b><%=lbd1%><br>
				<b>Price:-</b><%=price1%><br>
				<b>Phone:-</b><%=phone2%><br>
				<b>Book Type:-</b><%=btype%><br>
				<b>Description:-</b><%=desc%><br>
				
				
				
			</td>	
			</div>	
		</tr>		
				
		</table>		
		
		
		<%
				}

			}
			catch(Exception ex)
			{
				out.println(ex);
			}

*/
%>

</body>
</html>