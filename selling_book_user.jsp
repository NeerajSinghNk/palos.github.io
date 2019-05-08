<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Random"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="java.util.Enumeration"%>

<%!
	String user;
%>
<%
	System.out.println("upload_file.jsp");
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
		response.sendRedirect("seller_book.jsp");
		
		
	}
	catch(Exception ex)
	{
		out.println("Error:-"+ex);
	}
	
	
%>
