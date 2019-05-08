function SellUserBook()
{
	//alert("SellUserBook");
	a=document.getElementById("book_title");
	b=document.getElementById("auther_name");
	c=document.getElementById("book_pub");
	d=document.getElementById("date_pub");
	e=document.getElementById("price");
	f=document.getElementById("phone");
	g=document.getElementById("book_desc");
	h=document.getElementById("lbd");
	
	j=document.getElementById("book_typ");
	
	
	bookTitle_patt=/\w{5,20}/;
	if(!bookTitle_patt.test(a.value))
	{
		swal({
				title:"Please enter name between 5-20 character...",
				text:"Page say's Book Name",
				icon:'warning',
			});
			a.focus();
			a.style.background="red";
			return false;
	}
			
	bookAuther_patt=/\w{5,25}/;
	if(!bookAuther_patt.test(b.value))
	{
		swal({
				title:"Please enter name between 5-30 character...",
				text:"Page say's Auther Name",
				icon:'warning',
			});
			b.focus();
			b.style.background="red";
			return false;
	}		
	
	bookpub_patt=/\w{5,25}/;
	if(!bookpub_patt.test(c.value))
	{
		swal({
				title:"Please enter name between 5-30 character...",
				text:"Page say's Publisher Name",
				icon:'warning',
			});
			c.focus();
			c.style.background="red";
			return false;
	}		

	/*
	datePub_patt=/^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
	if(!datePub_patt.test(d.value))
	{
		swal({
				title:"Please enter valid date...",
				text:"Page say's dd/mm/yyyy",
				icon:'warning',
			});
			d.focus();
			d.style.background="red";
			return false;
	}	
*/
	phone_patt=/^\d{10}$/;
	if(!phone_patt.test(f.value))
	{
		swal({
				title:"Please enter valid mobile no...",
				text:"Page say's 91******41",
				icon:'warning',
			});
			f.focus();
			f.style.background="red";
			return false;
	}	

	bookDesc_patt=/\w{5,50}/;
	if(!bookDesc_patt.test(g.value))
	{
		swal({
				title:"Please enter description between 5-50 character...",
				text:"Page say's Description",
				icon:'warning',
			});
			g.focus();
			g.style.background="red";
			return false;
	}		
	/*
	lbd_patt=/^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$/i;
	if(!lbd_patt.test(h.value))
	{
		swal({
				title:"Please enter valid date...",
				text:"Page say's dd/mm/yyyy",
				icon:'warning',
			});
			h.focus();
			h.style.background="red";
			return false;
	}	
	*/
	if(j.value=="Select")
	{
		swal({
			title:"Please Select Book Type...",
			text:"Page say's Old/New Book",
			icon:'warning',
		});
		//city.focus();
		//city.style.background="red";
		return false;
	}
	
	return true;
	
	
}

function validate_fileupload()
{
	fileName=document.getElementById("book_photo");
    var allowed_extensions = new Array("jpg","png","gif");
    var file_extension = fileName.split('.').pop().toLowerCase(); // split function will split the filename by dot(.), and pop function will pop the last element from the array which will give you the extension as well. If there will be no extension then it will return the filename.

    for(var i = 0; i <= allowed_extensions.length; i++)
    {
        if(allowed_extensions[i]==file_extension)
        {
            return true; // valid file extension
        }
    }

    return false;
}

function bookTitle()
{
	//alert("hello");
	book=session.getAttribute("book-tit");
	swal({
			title:"Book Selling",
			text:"+book+",
			icon:'success',
		});
}