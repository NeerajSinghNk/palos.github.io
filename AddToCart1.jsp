<%@page import="java.sql.*"%>
<%@page import="java.util.Enumeration"%>


<%!
	String user,bookNumber,book_id;

	public enum Product
		{
			BookPrice,
			BookId,
			BookImage
			
		}
	
%>

<%
	System.out.println("AddToCart1.jsp");
	user=(String)session.getAttribute("user");
	
		
		
	if(user!=null)
	{
		Enumeration e=session.getAttributeNames();
		
		while(e.hasMoreElements())
		{
			String name1= (String)e.nextElement();
			//System.out.println("*****************"+name1);
			String AddToCart1=(String)session.getAttribute(name1).toString();
			String AddTo=(String)session.getValue(AddToCart1);
			System.out.println("AddToCart1.jsp--->"+AddTo);
		}
		
		
		response.sendRedirect("processCategory.jsp?type1=tech&book=New_book&x=52&y=13");
	}
	else
	{
		response.sendRedirect("login_form.jsp");
	}



%>