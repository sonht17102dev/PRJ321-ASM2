function validateFormSignUp(){

    let user = document["signup-form"]["username"].value;
    let pwd = document["signup-form"]["password"].value;
    let repwd = document["signup-form"]["repassword"].value;
	
    let s = "";
    if (user=="") {
        s += "Username must be filled in";
    }
    if (pwd=="") {
        if (s=="")
        	s += "Password must be filled in";
      	
        else 
        	s +="\nPassword must be filled in";
    }
    if(repwd == ""){
		if (s=="")
        	s += "Repassword must be filled in";
      	
        else 
        	s +="\nRepassword must be filled in";
	}

    if (s=="") {
		
		return true;
    }else {
        confirm(s); 
        return false;
    }
    
}