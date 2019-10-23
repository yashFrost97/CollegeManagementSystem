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
	
	<!--MAIN DIV FOR ASSIGNMENT-->
	<div class="container" style="margin-top:10%; width: 45%;">
	<div class="form-group">
			<h2 class="text-center">SELECT YOUR SUBJECT</h2>
		</div>
	<form action="defaultersubject.php" method="post">
	<?php
		$db=mysqli_connect("localhost","root","","cms") or die("could not connect");
		
		$query="select * from compsstaff where ID='{$_SESSION['ID']}';";
		
		$result=mysqli_query($db,$query);
		$columns = array();
		$i=0;
		while ($i < mysqli_num_fields($result)){
			$meta = mysqli_fetch_field($result);
			$columns[$i]= $meta->name ;
			$i = $i + 1;
		}
		$subjects=array_slice($columns,5);
		?>
		<div class="form-group">
		<select name="subj" class="form-control">
			<?php
				$row=mysqli_fetch_array($result);
				foreach($subjects as $sub){
					if($row[$sub]!=""){
			?>
				<option value="<?php echo $row[$sub]?>"><?php echo $row[$sub]?></option>
			<?php
			}
			}
			?>
		</select>
		</div>
		<button class="btn  btn-danger btn-block" type="submit" name="def"> <i class="fa fa-pen" aria-hidden="true"></i>Generate defaulter</button>
		<button class="btn  btn-danger btn-block" type="submit" name="seetotalattend"> <i class="fa fa-pen" aria-hidden="true"></i>SEE DATE WISE</button>
	<form>
	</div>
	<!--Ends-->
	
	<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>
<?php
	if(isset($_POST['def'])){
		$_SESSION['subject']=$_POST['subj'];
		header("Location: ./defaulter.php");
	}
	if(isset($_POST['seetotalattend'])){
		$_SESSION['subject']=$_POST['subj'];
		header("Location: ./datewise.php");
	}
	
?>
