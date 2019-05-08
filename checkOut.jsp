<%@page import="java.sql.*"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>


<html oncontextmenu="return false">
	<head onClick="disableBackButton()">
		<title>Check out</title>
		<meta></meta>
		<link rel="stylesheet" href="css/invoice.css">
		<link rel="license" href="https://www.opensource.org/licenses/mit-license/">
		
		<script src="Script/jquery-1.7.1.js"></script>
		<script src = "http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src = "http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
		<script>
		
					history.pushState(null, null, location.href);
			window.onpopstate = function () {
				history.go(1);
				};
		</script> 
	   
	   <script lang uage="javascript"type="text/javascript">//this code handles the F5/Ctrl+F5/Ctrl+R

			document.onkeydown = checkKeycode

			function checkKeycode(e){var keycode;if(window.event)

			keycode = window.event.keyCode;elseif(e)

			keycode = e.which;// Mozilla firefoxif($.browser.mozilla){if(keycode ==116||(e.ctrlKey && keycode ==82)){if(e.preventDefault){

			e.preventDefault();

			e.stopPropagation();}}}// IEelseif($.browser.msie){if(keycode ==116||(window.event.ctrlKey && keycode ==82)){

			window.event.returnValue =false;

			window.event.keyCode =0;

			window.status ="Refresh is disabled";}}}
		
		</script>
		
		
	</head>
	<body >
		<%!
			String user,bkdtit,bkdprc,bkdimg;
		%>
		
		<%
			user=(String)session.getAttribute("user");
			
			if(user!=null)
			{
				String add=(String)session.getAttribute("add");
				String num=(String)session.getAttribute("num");
				String phone=(String)session.getAttribute("phone");
				String cus=(String)session.getAttribute("Custid");
				String t=(String)session.getAttribute("t").toString();
				String a=(String)session.getAttribute("address");
				
				
				float aa=Float.parseFloat(t);
				float tr=aa+100;
				String str=String.valueOf(tr);
				session.setAttribute("TotalRate",str);
				
				
				int max=1000000;
				int min=1;
				Random rd_num=new Random();
				int invoice_id=min+rd_num.nextInt(max);
				String invoice=Integer.toString(invoice_id);
				session.setAttribute("Invoice",invoice);
				
				
				SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy");
				Date orderDate=new Date();
				String order1=formatter.format(orderDate);
				session.setAttribute("order1",order1);
				
				
				try
				{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					Connection con=DriverManager.getConnection("jdbc:odbc:commerce");
					Statement stmt=con.createStatement();
					ResultSet rs=null;
					String query=" ";
					
					
				
				%>
				<form method="post" action="checkEntry.jsp">
				<header>
			<h1>Invoice</h1>
			<address >
				<p><%=num%></p>
				<p><%=add%><br>Orange, CA 92866</p>
				<p><%=phone%></p>
			</address>
			<span><img alt="" src="images/log.jpg"><input type="file" accept="image/*"></span>
		</header>
		<article>
			<h1>Recipient</h1>
			<address >
				<p><%=num%><br><%=user%></p>
			</address>
			<table class="meta">
				<tr>
					<th><span >Invoice #</span></th>
					<td><span ><%=invoice%></span></td>
				</tr>
				<tr>
					<th><span >Date</span></th>
					<td><span ><%=order1%></span></td>
				</tr>
				<tr>
					<th><span >Payable Amount</span></th>
					<td><span id="prefix" ><span>&#x20B9</span></span><span><%=str%></span></td>
				</tr>
			</table>
			<table class="inventory">
				<thead>
					<tr>
						<th><span >Item</span></th>
						<th><span >Description</span></th>
						<th><span >Rate</span></th>
						<th><span >Quantity</span></th>
						<th><span >Price</span></th>
					</tr>
				</thead>
				
				<%
				
				Enumeration e=session.getAttributeNames();
				String check=" ";
				String CartDes=" ";
				while(e.hasMoreElements())
				{
					String name3=(String)e.nextElement();
					check=(String)session.getAttribute(name3).toString();
					
					
					CartDes=(String)session.getValue(check);
					System.out.println("checkOut.jsp---->"+CartDes);
					
						query="select * from books_oldnew where Book_id='"+CartDes+"'";
						//System.out.println("checkOut.jsp--->"+query);
						rs=stmt.executeQuery(query);
					
					while(rs.next())
					{
						String checkBookId=(String)rs.getString("Book_id");
						session.setAttribute("checkBook",checkBookId);
						String checkTitle=(String)rs.getString("Title");
						String checkDes=(String)rs.getString("Description");
						String checkPrc=(String)rs.getString("Price");
					
			%>
					
			<tbody>
					<tr>
						<td><span ><%=checkTitle%></span></td>
						<td><span ><%=checkDes%></span></td>
						<td><span data-prefix><span>&#x20B9</span></span><span ><%=checkPrc%></span></td>
						<td><span >1</span></td>
						<td><span data-prefix><span>&#x20B9</span></span><span><%=checkPrc%></span></td>
					</tr>
				</tbody>
			
					
			
			<%
					}
				}
			
			
			
			%>
				
			</table>
			
			<table class="balance">
				<tr>
					<th><span >Payment Type</span></th>
					<td><span data-prefix></span><span>COD</span></td>
				</tr>
				<tr>
					<th><span >Service/Delivery Charge</span></th>
					<td><span data-prefix><span>&#x20B9</span></span><span>100</span></td>
				</tr>
				<tr>
					<th><span >Total</span></th>
					<td><span data-prefix><span>&#x20B9</span></span><span><%=str%></span></td>
				</tr>
				
				<tr>
					<th><span ><input type="submit" value="Confirm Order"></span></th>
					<th><span ><button><a href="myAccount.jsp">Return Home</a></button></span></th>
					
				</tr>
			</table>
		</article>
		<aside>
			<h1><span >Additional Notes</span></h1>
			<div >
				<p>Book will be deliver under 5 working days.</p>
			</div>
		</aside>
			</form>
			<%
				}
				catch(Exception ex)
				{
					out.println("CheckOut Error:::"+ex);
				}
			}
			else
			{
				response.sendRedirect("login_form.jsp");
			}
			
			
		%>
	
	<%
	/*
		String invo=(String)session.getAttribute("invoice");
	//	System.out.println("Book Title:-"+book_tit);
		if(invo!=null)
		{
			out.println("<span style='color:red; font-size:20px;' name='msg' id='msg'>"+invo+"</span>");
			session.removeAttribute("invo");
			out.println("<a href='processCategory.jsp'>Continue shopping...</a>");
		}
	
	*/
	
	%>
	</body>

</html>