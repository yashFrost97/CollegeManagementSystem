<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/styles/profile.css">
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
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">Home</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="contactus.html">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
		  				<a href="logout.php" aria-expanded="false">Logout <i class="fa fa-user" aria-hidden="true"></i></a>
					</li>		
				</ul>
			</div><!-- /.navbar-collapse -->
  		</div><!-- /.container-fluid -->
	</nav>


	<!-- MAIN BODY HERE! -->
	<div class="container-fluid" id="profile-card">
		<!-- FOR THE SIDE PROFILE BAR -->
		<div class="row profile no-float">
			<div class="col-md-3 col-sm-6">
				<div class="profile-sidebar">	
					<!-- PROFILE PIC -->
					<div class="profile-userpic">
						<img src="images/<?PHP ECHO $_SESSION['ID']?>.png" class="img-responsive" alt="">
					</div>
					<!-- PROFILE TITLE -->
					<div class="profile-usertitle">
						<div class="profile-usertitle-name">
							<?php echo $_SESSION['name']; ?>
						</div>
					</div>
					<!-- PROFILE MENU/INFO -->
					<div class="profile-usermenu">
						<ul class="nav">
							
							<li>Subjects :<?php echo $_SESSION['subject'];?> </li><br>
							<li>E-mail : <?php echo $_SESSION['email'];?></li><br>
							<li>Contact No. : <?php echo $_SESSION['cno']; ?> </li><br>
							
						</ul>
						
					</div
					<!-- PROFILE INFO ENDS HERE -->
					
				</div>
				<h1 class="text-center"><a href="timetable.php"><button class="btn btn-danger btn-lg">TIMETABLE</button></a></h1>
				<!-- PROFILE SIDEBAR ENDS HERE -->
			</div>
			

			<!-- CARD VIEW HERE! -->
			<div class="col-md-9">
				<div class="col-sm-6 " >
					<a href="attendsubjects.php" >
					<div class="card w-50 border-primary text-center">
						<img class="card-img-top zoom" src="images/attend.png">
						<div class="card-body">
							<button class="btn btn-danger">Attendance</button>
							<!--<p class="card-text">Enter Attendance of student</p>-->
						</div>
					</div>
					</a>
				</div>
				<div class="col-sm-6">
					<div class="card text-center w-50">
						<a href="defaultersubject.php"><img class="card-img-top" src="images/defaulter.png">
						<div class="card-body">
							<button class="btn btn-danger">Defaulter</button>
						</div>
						</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="card text-center w-50">
						<a href="assignsubjects.php">
						<img class="card-img-top" src="images/assig.png">
						<div class="card-body">
							<button class="btn btn-danger">Assignments</button>
							<!--<p class="card-text">Assignment Lists</p>-->
						</div>
						</a>
					</div>
				</div>
				<div class="col-sm-6 text-center">
					<div class="card text-center w-50">
						<a href="mysubjects.php"><img class="card-img-top" src="images/seefeedback.png">
						<div class="card-body">
							<button class="btn btn-danger">SEE FEEDBACK</button>
							<!--<p class="card-text">Generate Online Quiz</p>-->
						</a>
						</div>
					</div>
				</div>
				<div class="col-sm-6 text-center">
					<div class="card text-center w-50">
						<a href="marks.php"><img class="card-img-top" src="images/qpaper.png">
						<div class="card-body">
							<button class="btn btn-danger">TERM TEST INFO</button>
							<!--<p class="card-text">Generate Question Paper!</p>-->
						</div>
						</a>
					</div>
				</div>
				<div class="col-sm-6 text-center">
					<div class="card text-center w-50">
						<a href="notice.php"><img class="card-img-top" src="images/not.png">
						<div class="card-body">
							<button class="btn btn-danger">Notice</button>
							<!--<p class="card-text">Generate Online Quiz</p>-->	
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>