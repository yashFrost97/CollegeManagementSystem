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
					<li><a href="studentProfile.php">Home</a></li>
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
	<div class="container">
	<table class="table table-bordered">
		<tr class="row">
		<th class="col-ms-2">SUBJECT</th>
		<th class="col-ms-2">ASSIGNMENT1</th>
		<th class="col-ms-2">ASSIGNMENT2</th>
		<th class="col-ms-2">ASSIGNMENT3</th>
		<th class="col-ms-4">ASSIGNMENT4</th>
		</tr>
	<?php
	$db=mysqli_connect("localhost","root","","cms");
	$result=mysqli_query($db,"select * from assignment;");
	$count = mysqli_num_rows(mysqli_query($db,"select * from assignment where YEAR ='{$_SESSION['myyear']}';"));
	while($row=mysqli_fetch_array($result))
	{
		if($row['Year']==$_SESSION['myyear']){
	?>	
		<tr class="row">
		<td class="col-ms-2"><?php echo $row['SUB']?></td>
		<td class="col-ms-2"><?php echo nl2br($row['Assignment1'])?></td>
		<td class="col-ms-2"><?php echo nl2br($row['Assignment2'])?></td>
		<td class="col-ms-2"><?php echo nl2br($row['Assignment3'])?></td>
		<td class="col-ms-4"><?php echo nl2br($row['Assignment4'])?></td>
		</tr>
		
	<?php
	}
	}
	?>
	</table>
	</div>
<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>