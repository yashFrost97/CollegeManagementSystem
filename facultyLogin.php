<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/styles/homepage.css">
	<link rel="stylesheet" type="text/css" href="css/styles/login.css">
	<title>Faculty Login</title>
</head>
<body>

	<!-- Navbar Here -->
	<nav class="navbar navbar-default">
		<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">VCET</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
				<ul class="nav navbar-nav">
					<li><a href="#">Home</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="contactus.html">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
		  				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <i class="fa fa-user" aria-hidden="true"></i></a>
		  				<ul class="dropdown-menu">
							<li><a href="facultyLogin.php">Faculty Login</a></li>
							<li><a href="studentLogin.php">Student Login</a></li>
		  				</ul>
					</li>		
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>

	<!-- LOGIN FORM BEGINS HERE -->
	<div class="container login-div">
		<div class="row">
			<h1> Faculty Login! </h1>
			<form action="facultyLogin.php" method="post">
				<div class="login-form">	
					<div class="form-group">
						<input class="form-control" type="text" name="ID" placeholder="ID" required="required">
					</div>
					<div class="form-group">
						<input class="form-control" type="password" name="Password" placeholder="Enter password" required="required">
					</div>
					<div class="form-group">
						<button class="btn btn-lg btn-danger btn-block" type="submit" name="flogin"> <i class="fa fa-user" aria-hidden="true"></i>         Login!</button>
					</div>
				</div>
			</form>
		</div>
	</div>

<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>
<script language="javascript">
<?php
	if(isset($_POST['flogin'])){
			$db = mysqli_connect("localhost","root","","cms");
			$ID = $_POST['ID'];
			$Password = $_POST['Password'];
			$query = "Select * from comps where ID='$ID';";
			$result = mysqli_query($db,$query);
			 ?>
					<?php
				if(mysqli_num_rows(mysqli_query($db,"Select * from compsstaff where ID='{$ID}';"))>0){
					?>
					<?php
					if(mysqli_num_rows(mysqli_query($db,"select * from compsstaff where ID='{$ID}' AND Password='{$Password}';"))>0){
						$row=mysqli_fetch_array(mysqli_query($db,"select * from compsstaff where ID='{$ID}';"));
						$_SESSION['ID']=$row['ID'];
						$_SESSION['name']=$row['Name'];
						$_SESSION['email']=$row['EmailID'];
						$_SESSION['cno']=$row['ContactNo'];
						$_SESSION['subject']=$row['S1']."  ".$row['S2']." ".$row['S3'];
						
						
						header("Location: ./teacherProfile.php");
					}
					else{
					?>
						alert("Wrong password");
					<?php
					}
  				}
				else{
					?>
						alert("User doesn't exist");
					<?php
				}
			}
?>
</script>