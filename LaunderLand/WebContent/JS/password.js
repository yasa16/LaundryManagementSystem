/**
 * 
 */
function passwordMatch(){
	var pswrd = document.getElementById("pwd").value;
	var cnfrm = document.getElementById("repwd").value;
	
	if(pswrd==cnfrm){
		//alert("Password Matched");
		return true;
	}
	else{
		alert("Please cofirm your New Password!");
		return false;
	}
}