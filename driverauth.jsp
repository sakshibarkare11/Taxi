<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Aleo|Slabo+27px"
	rel="stylesheet">
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 10px;
	/* background: linear-gradient(135deg, #71b7e6, #9b59b6); */
}

.container {
	max-width: 700px;
	width: 100%;
	background-color: #fff;
	padding: 25px 30px;
	border-radius: 5px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}

.container .title {
	font-size: 25px;
	font-weight: 500;
	position: relative;
}

.container .title::before {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	height: 3px;
	width: 30px;
	border-radius: 5px;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

.content form .user-details {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin: 20px 0 12px 0;
}

form .user-details .input-box {
	margin-bottom: 15px;
	width: calc(100%/ 2 - 20px);
}

form .input-box span.details {
	display: block;
	font-weight: 500;
	margin-bottom: 5px;
}

.user-details .input-box input {
	height: 45px;
	width: 100%;
	outline: none;
	font-size: 16px;
	border-radius: 5px;
	padding-left: 15px;
	border: 1px solid #ccc;
	border-bottom-width: 2px;
	transition: all 0.3s ease;
}

.user-details .input-box input:focus, .user-details .input-box input:valid
	{
	border-color: #9b59b6;
}

form .gender-details .gender-title {
	font-size: 20px;
	font-weight: 500;
}

form .category {
	display: flex;
	width: 80%;
	margin: 14px 0;
	justify-content: space-between;
}

form .category label {
	display: flex;
	align-items: center;
	cursor: pointer;
}

form .category label .dot {
	height: 18px;
	width: 18px;
	border-radius: 50%;
	margin-right: 10px;
	background: #d9d9d9;
	border: 5px solid transparent;
	transition: all 0.3s ease;
}

#dot-1:checked ~ .category label .one, #dot-2:checked ~ .category label .two,
	#dot-3:checked ~ .category label .three {
	background: #9b59b6;
	border-color: #d9d9d9;
}

form input[type="radio"] {
	display: none;
}

form .button {
	height: 45px;
	margin: 35px 0
}

form .button input {
	height: 100%;
	width: 100%;
	border-radius: 5px;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	cursor: pointer;
	transition: all 0.3s ease;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

form .button input:hover {
	/* transform: scale(0.99); */
	background: linear-gradient(-135deg, #71b7e6, #9b59b6);
}

@media ( max-width : 584px) {
	.container {
		max-width: 100%;
	}
	form .user-details .input-box {
		margin-bottom: 15px;
		width: 100%;
	}
	form .category {
		width: 100%;
	}
	.content form .user-details {
		max-height: 300px;
		overflow-y: scroll;
	}
	.user-details::-webkit-scrollbar {
		width: 5px;
	}
}

@media ( max-width : 459px) {
	.container .content .category {
		flex-direction: column;
	}
}
</style>
</head>
<body>



	<div class="container">
		<div class="title">Registration</div>
		<div class="content">
			<form action="DriverInfo" method="post">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Full Name</span> <input type="text"
							name="name" placeholder="Enter your name" required>
					</div>
					<div class="input-box">
						<span class="details">Username</span> <input type="text"
							name="username" placeholder="Enter your username" required>
					</div>
					<div class="input-box">
						<span class="details">Email</span> <input type="text" name="email"
							placeholder="Enter your email" required>
					</div>
					<div class="input-box">
						<span class="details">Phone Number</span> <input type="number"
							name="phoneno" placeholder="Enter your number" required>
					</div>
					<!-- <div class="input-box">
            <span class="details">Password</span>
            <input type="text" name="password" placeholder="Enter your password" required>
            Note:Password must contains one uppercase letter,one lowercase letter,one digit,one special character and should be minimun 8 character
          </div> -->
					<div class="input-box">
						<span class="details">Password</span> <input type="password"
							id="password" placeholder="Enter password" onInput="check()" />
						<br>
						<div id="set"
							style="display: block; position: relative; margin: auto;">
							<div id="count"
								style="display: inline-block; position: relative; margin: 4%; margin-bottom: 2%; color: #000; font-size: 18px; text-indent: 40px; font-weight: bolder;">Length
								: 0</div>
							<i id="see"
								style="display: inline-block; color: gray; margin: auto; float: right; margin-right: 40px; margin-top: 10px; cursor: pointer; transition-duration: 0.2s;"
								onclick="see()" class="far fa-eye"></i>
						</div>
						<div id="check0"
							style="position: relative; display: block; margin: 4%; color: red; font-size: 18px; width: 92%;">
							<i class="far fa-check-circle"></i> <span> Length more
								than 5.</span>
						</div>
						<div id="check1"
							style="position: relative; display: block; margin: 4%; color: red; font-size: 18px; width: 92%;">
							<i class="far fa-check-circle"></i> <span> Length less
								than 15.</span>
						</div>
						<div id="check2"
							style="position: relative; display: block; margin: 4%; color: red; font-size: 18px; width: 92%;">
							<i class="far fa-check-circle"></i> <span> Contains
								numerical character.</span>
						</div>
						<div id="check3"
							style="position: relative; display: block; margin: 4%; color: red; font-size: 18px; width: 92%;">
							<i class="far fa-check-circle"></i> <span>Contains special
								character.</span>
						</div>
						<div id="check4"
							style="position: relative; display: block; margin: 4%; color: red; font-size: 18px; width: 92%;">
							<i class="far fa-check-circle"></i> <span>Shouldn't
								contain spaces.</span>
						</div>
					</div>

					<!-- <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="text" placeholder="Confirm your password" required>
          </div> -->
				</div>
				<div class="gender-details">
					<input type="radio" name="gender" value="male" id="dot-1">
					<input type="radio" name="gender" value="female" id="dot-2">
					<input type="radio" name="gender" value="not to say" id="dot-3">
					<span class="gender-title">Gender</span>
					<div class="category">
						<label for="dot-1"> <span class="dot one"></span> <span
							class="gender">Male</span>
						</label> <label for="dot-2"> <span class="dot two"></span> <span
							class="gender">Female</span>
						</label> <label for="dot-3"> <span class="dot three"></span> <span
							class="gender">Prefer not to say</span>
						</label>
					</div>
				</div>
				<div class="button">
					<input type="submit" value="Register">
				</div>
		</div>
		<p>
			Already have an account?<a href="login.jsp">Login Here</a>
	</div>

	</form>
	<script type="text/javascript">
var is_visible = false;

function see()
{
    var input = document.getElementById("password");
    var see = document.getElementById("see");
    
    if(is_visible)
    {
        input.type = 'password';
        is_visible = false; 
        see.style.color='gray';
    }
    else
    {
        input.type = 'text';
        is_visible = true; 
        see.style.color='#262626';
    }
    
}

function check()
{
    var input = document.getElementById("password").value;
    
    input=input.trim();
    document.getElementById("password").value=input;
    document.getElementById("count").innerText="Length : " + input.length;
    if(input.length>=5)
    {
        document.getElementById("check0").style.color="green";
    }
    else
    {
       document.getElementById("check0").style.color="red"; 
    }
    
    if(input.length<=15)
    {
        document.getElementById("check1").style.color="green";
    }
    else
    {
       document.getElementById("check1").style.color="red"; 
    }
    
    if(input.match(/[0-9]/i))
    {
        document.getElementById("check2").style.color="green";
    }
    else
    {
       document.getElementById("check2").style.color="red"; 
    }
    
    if(input.match(/[^A-Za-z0-9-' ']/i))
    {
        document.getElementById("check3").style.color="green";
    }
    else
    {
       document.getElementById("check3").style.color="red"; 
    }
    
    if(input.match(' '))
    {
        document.getElementById("check4").style.color="red";
    }
    else
    {
       document.getElementById("check4").style.color="green"; 
    }
    
}

</script>
</body>

</html>