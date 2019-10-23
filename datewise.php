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
	
	<?php
		$db=mysqli_connect("localhost","root","","cms") or die("could not connect");
		$subject=$_SESSION['subject'];
		$query="select * from $subject;";
		$result=mysqli_query($db,$query);
		$columns = array();
		$i=0;
		while ($i < mysqli_num_fields($result)){
			$meta = mysqli_fetch_field($result);
			$columns[]=$meta->name ;
			$i = $i + 1;
		}
		$dates=array_slice($columns,1);
	?>
	<div class="container">
	<table class="table table-bordered">
		<tr class="row">
		<?php
		foreach($dates as $mydate){
			?>
			<th><?php echo $mydate ?></th>
			<?php
		}
		?>
		</tr>
		<?php
		while($row=mysqli_fetch_array($result)){
		?>
		<tr class="row">
		<?php 
		foreach($dates as $mydate){
		?>
			<td><?php echo $row[$mydate] ?></td>
		<?php
		}
		?>
		</tr>
		<?php
		}
		?>
		
	</table>