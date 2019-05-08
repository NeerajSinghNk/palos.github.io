function validName()
{
	sname=document.getElementById("fname");
	sname_patt=/\w{3,20}/;
	if(!sname_patt.test(sname.value))
			{
				swal({
					title:"Please enter name between 3-20 character...",
					text:"Page say's simon",
					icon:'warning',
				});
				sname.focus();
				sname.style.background="red";
				return false;
			}
	return true;
	
}

function validPassword()
{
	c=document.getElementById("password");
	//sname_patt=/\w{5,20}/;
	if ((c.length <=5) || (c.length>20)) {
		swal({
				title:"Please enter password",
				text:"password length must be 5 and 20...",
				icon:'warning',
			});
		c.focus;
		c.style.background="red";
		return false;
	}
	
}

function validForm()
{
	email = document.getElementById("email");
	
    email_patt = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if (!email_patt.test(email.value)) 
	{
		swal({
				title:"Please provide a valid email address",
				text:"example@palos.com",
				icon:'warning',
			});
		email.focus;
		email.style.background="red";
		return false;
	}
	return true;
}


function loginValid()
{
	mail=document.getElementById("email");
	pwd=document.getElementById("password");
	if(document.form.mail.value=="")
			{
				swal({
					title:"Please enter valid Email...",
					text:"Ex...ex@palos.com",
					icon:'warning',
				});
				email.focus();
				email.style.background="red";
				return false;
			}
			
	if(document.form.pwd.value=="")
			{
				swal({
					title:"Please enter valid Password...",
					text:"Ex...****",
					icon:'warning',
				});
				pwd.focus();
				pwd.style.background="red";
				return false;
			}		
			
		return true;			
}

function validForm1()
{
	semail=document.getElementById("semail");
	spwd=document.getElementById("spassword");
	
	if(document.form.semail.value=="")
			{
				swal({
					title:"Please enter valid Email...",
					text:"Ex...Simon",
					icon:'warning',
				});
				semail.focus();
				semail.style.background="red";
				return false;
			}
			
	if(document.form.spwd.value=="")
			{
				swal({
					title:"Please enter valid Email...",
					text:"Ex...****",
					icon:'warning',
				});
				spwd.focus();
				spwd.style.background="red";
				return false;
			}		
			
		return true;
}



function validSelect()
{
	book=document.getElementById("book_typ");
	//alert("hello neeraj");
	if(book.value=="Select")
			{
				swal({
					title:"Please enter valid Email...",
					text:"Ex...New/Old",
					icon:'warning',
				});
				book.focus();
				book.style.background="red";
				return false;
			}
	
	return true;
}

