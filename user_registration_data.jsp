<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>

<%
	out.println("User_registration_data.jsp");
	
	String nam=(String)request.getParameter("fname");
	String email=(String)request.getParameter("email");
	String pwd=(String)request.getParameter("password");
	String phone=(String)request.getParameter("phone");
	String gender=(String)request.getParameter("gender");
	String age=(String)request.getParameter("age");
	String address=(String)request.getParameter("address");
	String pin=(String)request.getParameter("pin");

	int max=10000;
	int min=1;
	Random rd_num=new Random();
	int custo_id=min+rd_num.nextInt(max);
	String cid=Integer.toString(custo_id);
	//System.out.println(cid);
	
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from coustomer_register where Email='"+email+"'");
		int count=0;
		while(rs.next())
			{
				count++;
			}	
		if(count>0)
		{
			out.println("Already registered email...Pelese provide another email");
			session.setAttribute("email","ERROR:Email already exists.... Use another email");
		}
		
		else
		{
			String query=" ";
			int i=0;
			query="insert into coustomer_register(Coustomer_id,Login,Email,Password,Phone,Age,Gender,Address,PIN,Type)values('"+cid+"','"+nam+"','"+email+"','"+pwd+"','"+phone+"','"+age+"','"+gender+"','"+address+"','"+pin+"','type2')";
			System.out.println(query);
			i=stmt.executeUpdate(query);
			System.out.println("You have successfully Register in Costomer Table...");
			session.setAttribute("email","Registration successfully..."+email);
			session.setAttribute("userphone",phone);
		}
		con.close();
		response.sendRedirect("login_form.jsp");
	}
	catch(Exception ex)
		{
			out.println(ex);
		}
			



%>