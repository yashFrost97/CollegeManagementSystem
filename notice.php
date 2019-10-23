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
					<li><a href="teacherProfile.php">Home</a></li>
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
		<form action="notice.php" method="post">
		<div class="form-group">
		<select name="year" class="form-control">
			<option value="">FOR THE YEAR</option>
			<option value="SE">SE</option>
			<option value="TE">TE</option>
			<option value="BE">BE</option>
		</select>
		</div>
		<div class="form-group">
			<u><h3>Enter Notice</u></h3>
			<textarea class="form-control" placeholder="Tell here!" name="textt"></textarea>
		</div>
		
		<button class="btn btn-md btn-danger btn-block" type="submit" name="submit"> <i class="fa fa-pen" aria-hidden="true"></i>Upload it</button>
		
		</form>
		<h3><u>Previous Notices :</u></h3>
		<table class="table table-striped table-bordered">
		<tr class="row">
			<th class="col-md-4 text-center"><h4>SE</h4></th>
			<th class="col-md-4 text-center"><h4>TE</h4></th>
			<th class="col-md-4 text-center"><h4>BE</h4></th>
		</tr>
		<tr class="row">
		<?php
		$db=mysqli_connect("localhost","root","","cms");
		$result=mysqli_query($db,"select * from notice;");
		while($row=mysqli_fetch_array($result)){
		?>
		<td class="col-md-4"><?php echo nl2br($row['Notice']);?></td>
		<?php
		}
		?>
		</tr>
		</table>
		</div>
<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>
<?php

	if(isset($_POST['submit'])&&$_POST['year']!=""&&$_POST['textt']!=""){
		
		$roww=mysqli_fetch_array(mysqli_query($db,"select Notice from notice where Year='{$_POST['year']}';"));
		$info=$roww[0]."\n".$_POST['textt'];
	
		mysqli_query($db,"UPDATE `notice` SET `Notice`='$info' WHERE  Year='{$_POST['year']}';");
		header("Location: ./teacherProfile.php");
	}
	
?>