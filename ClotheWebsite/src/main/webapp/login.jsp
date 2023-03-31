<!DOCTYPE html>
<html>
<link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&display=swap" rel="stylesheet">
<style>
@import url('https://fonts.googleapis.com/css2?family=Delicious+Handrawn&display=swap');

body {
  /*font-family: 'Delicious Handrawn', cursive;*/
  font-family: 'Kanit', sans-serif;
  box-sizing: border-box;
  color: #fccb00;
}

*, *::before, *::after {
  box-sizing: inherit;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  font-family: 'Kanit', sans-serif;
  font-size: larger;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  box-shadow: 5px 5px 5px 5px #1e291e ;
  border-radius: 5rem;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

button {
  background-color: #2a597e;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  font-family: 'Kanit', sans-serif;
  font-size: larger;
  box-shadow: 5px 5px 5px 5px #1e291e ;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

.cancelbtn {
  padding: 14px 20px;
  background-color: #773e3e;
}

.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
  border-radius: 5rem;
}

.container {
  padding: 16px;
}

.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

.form-signup {
  max-width: 500px;
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  align-items: center;
  box-shadow: 5px 5px 5px 5px #1e291e ;
  padding: 20px;
  /* background-color: #30862d; */
  /* background: linear-gradient(
        90deg,
        rgba(255, 0, 0, 1) 0%,
        rgba(255, 154, 0, 1) 10%,
        rgba(208, 222, 33, 1) 20%,
        rgba(79, 220, 74, 1) 30%,
        rgba(63, 218, 216, 1) 40%,
        rgba(47, 201, 226, 1) 50%,
        rgba(28, 127, 238, 1) 60%,
        rgba(95, 21, 242, 1) 70%,
        rgba(186, 12, 248, 1) 80%,
        rgba(251, 7, 217, 1) 90%,
        rgba(255, 0, 0, 1) 100%); */
        /* background: conic-gradient(#80FFDB 0% 33%, #72EFDD 0% 66%, #64DFDF 0% 100%); */
        /*background: linear-gradient(
           90deg, rgb(0,0,0) 15%, rgb(256,0,0) 35%, rgb(256,0,0) 45%, rgb(0,0,0) 100% );*/
        /*background: linear-gradient(
        90deg,
        #28313B 50%,
        #485461 50%
        );*/
        background: radial-gradient(circle at 10% 20%, rgb(0, 0, 0) 0%, rgb(64, 64, 64) 90.2%);
           
  border-radius: 1rem;
}

@media (max-width: 600px) {
  .form-signup input[type="text"],
  .form-signup input[type="password"] {
    width: 90%;
  }
    
  .cancelbtn, .signupbtn {
    width: 100%;
  }
}
    
@media only screen and (max-width: 900px){
	.form-signup {
		max-width: 90%;
	}
},

</style>
<body>

<form action="login" method = "post" class = "form-signup" >
  <div class="container">
    <h1>Log in</h1>
    <hr>
    <label for = "username"> <b>Username</b></label>
    <input type = "text" placeholder="Enter your name" name = "username" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>

    <div class="clearfix">
      <button type="submit" class="signupbtn">Login</button>
    </div>
  </div>
</form>

</body>
</html>