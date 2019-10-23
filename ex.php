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
	<form action="updatemarks.php" method="post">
	<h2 class="text-center"><?php echo $_SESSION['MYsubj'] ;?></h2>
	<table class="table ">
	<tr class="row">
		<th class="col-sm-3"></th>
		<th class="col-sm-3">ROll NO</th>
		<th class="col-sm-3">Marks</th>
		<th class="col-sm-3"></th>
	</tr>
	<?php
	$db=mysqli_connect("localhost","root","","cms");
	//ECHO $_SESSION['MYsubj'];
	$class=strtolower(substr($_SESSION['MYsubj'],0,2)."_marks");
	$subject = substr($_SESSION['MYsubj'],3);
	$query="select * from $class;";
	
	$result=mysqli_query($db,$query);
	$p=mysqli_num_rows($result);
		if($_SESSION['ID']=="C12" && $_SESSION['MYsubj']=="BE_ELEC"){
			$START=0;
			$p=40;
		}
		else if($_SESSION['ID']=="C13" && $_SESSION['MYsubj']=="BE_ELEC"){
			$START=41;
			$p=72;
		}
		else{
			$START=0;
		}
		
		$result1=mysqli_query($db,"Select ROllNo,$subject from $class;");
		
		while($row=mysqli_fetch_array($result1)){
		$q= substr($row['ROllNo'],2,4);
		if(($q>=$START) && ($q<=$p)){
	?>
	<tr class="row">
	
		<td class="col-sm-3"></td>
		<td class="col-sm-3"><?php echo $row['ROllNo'] ?></td>
		<td class="col-sm-3"><input type="number" max="20" min="0" required="required" name="<?php echo $row['ROllNo'] ?>" value="<?php echo $row[$subject] ?>"></td>
		<td class="col-sm-3"></td>
	</tr>
	<?php
		}
	}
	?>
	</table>
	<div class="form-group">
		<button class="btn btn-md btn-danger btn-block" type="submit" name="marks">Update Marks</button>
	</div>
	</form>
	</div>
<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>	
</body>
</html>

<?php
	//ECHO $_SESSION['MYsubj'];
	$class=strtolower(substr($_SESSION['MYsubj'],0,2)."_marks");
	$subject = substr($_SESSION['MYsubj'],3);
	$db=mysqli_connect("localhost","root","","cms");
	$query="select * from $class";
	$result=mysqli_query($db,$query);
	$p=mysqli_num_rows($result);
	//ECHO $p;
		if($_SESSION['ID']=="C12" && $_SESSION['MYsubj']="BE_ELEC"){
			$START=0;
			$p=40;
		}
		//else if($_SESSION['ID']=="C13" && $_SESSION['MYsubj']="BE_ELEC"){
			///$START=41;
			//$p=72;
		//}
		else{
			$START=0;
		}
		//echo $START;
		//echo $p;
	
	
?>