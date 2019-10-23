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
	<link rel="stylesheet" type="text/css" href="css/styles/quiz.css">
	
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
	
	<!--MAIN DIV FOR ASSIGNMENT-->
	<div class="container">
	<form action="assignments.php" method="post">
	<?php
		$db=mysqli_connect("localhost","root","","cms") or die("could not connect");
		$assignquery=mysqli_query($db,"select * from assignment;");
		$j=0;
		while ($j < mysqli_num_fields($assignquery)){
			$meta = mysqli_fetch_field($assignquery);
			$asss[$j]= $meta->name ;
			$j = $j + 1;
		}
		$ano=array_slice($asss,4);
		$subupload=$_SESSION['subject'];
		if(($_SESSION['ID']=='C12')&& $subupload=="be_elec"){
			$subupload="be_ml";
		}
		else if(($_SESSION['ID']=='C13')&& $subupload=="be_elec"){
			$subupload="be_df";
		}
		//echo $subupload;
		$row=mysqli_fetch_array(mysqli_query($db,"select * from assignment where Subject='$subupload';"));
		//echo $row['assign'];
		foreach($ano as $assign){
		?>
					<div class="form-group">
						<h3><?php echo $assign ?></h3>
						<textarea class="form-control" placeholder="<?php echo $assign ?>" name="<?php echo $assign ?>"><?php echo $row[$assign] ?></textarea>
					</div>
		<?php
		}
		?>
		<button class="btn btn-lg btn-danger btn-block" type="submit" name="aupload"> <i class="fa fa-pen" aria-hidden="true"></i>Upload Assignments</button>
	</form>
	</div>
	<!--Ends-->
	<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>
<?php
	if(isset($_POST['aupload'])){
		$assignquery=mysqli_query($db,"select * from assignment;");
		$j=0;
		while ($j < mysqli_num_fields($assignquery)){
			$meta = mysqli_fetch_field($assignquery);
			$asss[$j]= $meta->name ;
			$j = $j + 1;
		}
		$ano=array_slice($asss,4);
		
		foreach($ano as $assign){
			//echo $assign;
			mysqli_query($db,"UPDATE `assignment` SET `$assign`='{$_POST[$assign]}' WHERE Subject='$subupload';");
		}
		header("Location: ./teacherProfile.php");
	}
?>