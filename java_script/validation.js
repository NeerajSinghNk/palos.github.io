function validForm() {
	//alert("**********");
	var a=document.getElementById('fname');
	var b=document.getElementById('email');
	var c=document.getElementById('password');
	var d=document.getElementById('phone');
	var e=document.getElementById('age');
	var f=document.getElementById('pin');
	var g=document.getElementById('address');
	var h=document.getElementById('gender');

	sname_patt=/\w{3,20}/;
	if(!sname_patt.test(a.value))
	{
		swal({
				title:"Please enter name between 3-20 character...",
				text:"Page say's simon",
				icon:'warning',
			});
			//sname.focus();
			//sname.style.background="red";
			return false;
	}

	if (b=="") 
	{
		alert(b);
		swal({
				title:"E-mail can't empty...",
				text:"example@palos.com",
				icon:'warning',
			});
		//b.focus();
		//b.style.background="red";
		return false;
	}
	if (b.indexOf('@') <=0) {
		swal({
				title:"Invalid email....",
				text:"@ Invalid postion",
				icon:'warning',
			});
		///b.focus();
		//b.style.background="red";
		return false;
	}
	if((b.charAt(b.length-4)!='.') && (b.charAt(b.length-3)!='.')) {
		swal({
				title:"Invalid email",
				text:". Invalid position...",
				icon:'warning',
			});
		//b.focus();
		//b.style.background="red";
		return false;
	}

	if (c=="") {
		swal({
				title:"Please enter password",
				text:"******",
				icon:'warning',
			});
		//c.focus();
		//c.style.background="red";
		return false;
	}
	if ((c.length <=5) || (c.length>20)) {
		swal({
				title:"Please enter password",
				text:"password length must be 5 and 20...",
				icon:'warning',
			});
		//c.focus();
		//c.style.background="red";
		return false;
	}

	if (d=="") {
		swal({
				title:"Please provide a valid phone number",
				text:"91********00",
				icon:'warning',
			});
		//d.focus();
		//d.style.background="red";
		return false;
	}
	if (isNaN(d)) {
		swal({
				title:"Phone Number",
				text:"User must write digit only not character...",
				icon:'warning',
			});
		//d.focus();
		//d.style.background="red";
		return false;
	}
	if (d.length!=10) {
		swal({
				title:"Phone Number",
				text:"Mobile no must be 10-degit...",
				icon:'warning',
			});
		//d.focus();
		//d.style.background="red";
		return false;
	}


	if (e=="") {
		swal({
				title:"Please provide age",
				text:"Age",
				icon:'warning',
			});
		//e.focus();
		//e.style.background="red";
		return false;
	}
	if (isNaN(e)) {
		swal({
				title:"Age",
				text:"User must enter age in digit...",
				icon:'warning',
			});
		//e.focus();
		//e.style.background="red";
		return false;
	}
	if (e.length!=2) {
		swal({
				title:"Age",
				text:"Age valid under 10-100...",
				icon:'warning',
			});
		//e.focus();
		//e.style.background="red";
		return false;
	}

	if (f=="") {
		swal({
				title:"Please Postal address",
				text:"PIN",
				icon:'warning',
			});
		//f.focus();
		//f.style.background="red";
		return false;
	}
	if (isNaN(f)) {
		swal({
				title:"Postal code",
				text:"User must enter PIN in digit...",
				icon:'warning',
			});
		//f.focus();
		//f.style.background="red";
		return false;
	}
	if (f.length!=6) {
		swal({
				title:"Postal code",
				text:"PIN valid under 6-digit...",
				icon:'warning',
			});
		//f.focus();
		//f.style.background="red";
		return false;
	}

	if (h=="Select") {
		swal({
				title:"Please Select gender...",
				text:"Male/Female",
				icon:'warning',
			});
		//h.focus();
		//h.style.background="red";
		return false;
	}

	

}