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
	
	<div class="container" style="margin-top:10%; width: 45%;">
	<h2 class="text-center">YOUR TERM TEST MARKS</h2>
	<table class="table table-striped " >
	<?php
	$db=mysqli_connect("localhost","root","","cms");
	$class=$_SESSION['myyear']."_MARKS";
	//echo $class;
	
	$result=mysqli_query($db,"Select * from $class where ROllNo='{$_SESSION['ID']}';");
	
	if($class=="SE_MARKS"){
		$subjects=6;
		$sub=array('COA','AOA','CG','OSTL','OS','MATHS');
	}
	else if($class=="TE_MARKS"){
		$subjects=4;
		$sub=array('DD','SE','MCC','SPCC');
	}
	else{
		$sub=array('DWM','PDS','HMI','ELEC');
		$subjects=4;
	}
	?>
	<tr class="row">
	<th>ROLL NO</th>
	<?php
		foreach($sub as $s){
	?>
		<th><?php echo $s ?></th>
	<?php
		}
		?>
	</tr>
	<?php
	while($row=mysqli_fetch_array($result)){
	?>
	<tr class="row">
		
		<td><?php echo $row[0] ?></td>
		<?php
		for($i=1;$i<=$subjects;$i++)
		if($row[$i]<8){
		?>
		<td style="color:red"><?php echo $row[$i] ?></td>
		<?php
		}
		else{
		?>
		<td><?php echo $row[$i] ?></td>
		<?php
		}
		?>
	</tr>
	<?php
	}
	?>
	</table>

	</div>
<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>	
</body>
</html>
<?php
	if(isset($_POST['marks'])){
		$result=mysqli_query($db,"Select ROllNo,$subject from $class;");
		while($row=mysqli_fetch_array($result)){
			$index = $_POST[$row['ROllNo']];
			mysqli_query($db,"Update $class set $subject=$index where ROllNo='{$row['ROllNo']}';");
		}
		header("Location: ./teacherProfile.php");
		
	}
?>