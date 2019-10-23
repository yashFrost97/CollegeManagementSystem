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
	//session_start();
	$mysub=strtoupper($_SESSION['subject']);
	if($_SESSION['ID']=="C09" && $mysub=="SE_COA"){
		$mysub= "SE_COA1";
	}
	if($_SESSION['ID']=="C06" && $mysub=="SE_COA"){
		$mysub= "SE_COA2";
	}
	if($_SESSION['ID']=="C07" && $mysub=="SE_AOA"){
		$mysub= "SE_AOA1";
	}
	if($_SESSION['ID']=="C12" && $mysub=="SE_AOA"){
		$mysub= "SE_AOA2";
	}
	if($_SESSION['ID']=="C13" && $mysub=="SE_OS"){
		$mysub= "SE_OS1";
	}
	if($_SESSION['ID']=="C02" && $mysub=="SE_OS"){
		$mysub= "SE_OS2";
	}
	if($_SESSION['ID']=="C10" && $mysub=="TE_MCC"){
		$mysub= "TE_MCC1";
	}
	if($_SESSION['ID']=="C11" && $mysub=="TE_MCC"){
		$mysub= "TE_MCC2";
	}
	if($_SESSION['ID']=="C12" && $mysub=="BE_ELEC"){
		$mysub= "BE_ELEC1";
	}
	if($_SESSION['ID']=="C13" && $mysub=="BE_ELEC"){
		$mysub= "BE_ELEC2";
	}
	
	
	$year=substr($mysub,0,2);
	$db = mysqli_connect("localhost","root","","cms");
	$checkforall=mysqli_num_rows(mysqli_query($db,"select * from feedgiven where value=0 AND ID like '$year%';"));
	if($checkforall==0){
	$row=mysqli_num_rows(mysqli_query($db,"select * from feedgiven where value=1 AND ID like '$year%';"));
	$res=mysqli_query($db,"select * from feedback;");
	//echo $_SESSION['ID'];
	//echo $mysub;
	if($_SESSION['ID']=="C12" && $mysub=="BE_ELEC1"){
		$row=40;
	}
	if($_SESSION['ID']=="C13" && $mysub=="BE_ELEC2"){
		$row=32;
	}
	//echo $row;
	?>
	<div class="container">
	<h3 class="text-center"><b><u><?php echo $_SESSION['name']." | ".$mysub;?></u></b></h3>
	<h1 class="text-center">YOUR FEEDBACK RESULT</h1>
	
	<table class="table table-bordered">
			<tr>
				<th><?php echo "QNO" ?> </th>
				<th><?php echo "QUESTIONS" ?> </th>
				<th><?php echo "SCORE" ?> </th>
			</tr>
	<?php
	$myavg=0;
	while($result=mysqli_fetch_array($res)){
		?>
		
			<tr>
				<td><?php echo $result['QNO']?></td>
				<td><?php echo $result['Questions']?></td>
				<td><?php echo round(($result[$mysub]/$row),2) ?></td>
			</tr>
		
		<?php
		$myavg+=($result[$mysub]/$row);
	}
	$final=$myavg/7;
?>
<tr>
	<td></td>
	<td><b>YOUR AVG SCORE</b></td>
	<td><b><?php  echo round($final,2) ?></b></td>
</tr>
<tr>
	<td></td>
	<td><b>PERCENTAGE</b></td>
	<td><b><?php  echo round(($final*100/4),2) ?></b></td>
</tr>
<?php
if(($final*100/4)>90){
	?>
<h3 class="text-center">YOU ARE DOING PRETTY WELL!</h3>
<?php
}
?>
</table>
</div>
	<?php
	}
	else{
		?>
		<div class="container">
			<h1 class="text-center">ALL STUDENTS HAVEN'T FILLED THE FEEDBACK FORM YET</h1>
		</div>
		<?php
	}
	?>