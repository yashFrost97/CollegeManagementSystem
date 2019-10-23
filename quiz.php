<?php
	session_start();
	if(substr($_SESSION['ID'],0,2)=="SE"){
	$subjarray=array("OS","COA","CG","AOA");
	$marksarray=array("OS"=>0,"COA"=>0,"CG"=>0,"AOA"=>0);
	}
	else if(substr($_SESSION['ID'],0,2)=="TE"){
	$subjarray = array("DD","SPCC","SE","MCC");
	$marksarray=array('DD'=>0,'SPCC'=>0,'SE'=>0,'MCC'=>0);
	}
	else{
	$subjarray = array("HMI","DWM","PDS","ELEC");
	$marksarray=array('HMI'=>0,'DWM'=>0,'PDS'=>0,'ELEC'=>0);
	}
	$yearss=substr($_SESSION['ID'],0,2)."_QUIZ";
	if(substr($_SESSION['ID'],0,2)=="BE"){
	if((int)substr($_SESSION['ID'],2,4)>=41&&(int)substr($_SESSION['ID'],2,4)<=72){
		$yearss='be_quiz1';
	}
	}	//echo $yearss;
	if(isset($_POST['quiz'])){
		$db=mysqli_connect("localhost","root","","cms") or die("couldnot connect");
		$calc = mysqli_query($db,"Select * from $yearss;");
		$QNO=1;
		$marks=0;
		
		$i=0;
		$quizclass = strtolower($_SESSION['myyear'])."_quizmarks";
		echo $quizclass;
		while($row=mysqli_fetch_array($calc)){
			if($row['OptionC']==$_POST[$QNO]){
				$marks++;
			}
			$QNO++;
			if($QNO%5==0){
				$marksarray[$subjarray[$i]]=$marks;
				$marks=0;
				$i++;
			}
		}
		$x=0;
		$myrollno =$_SESSION['ID'];
		echo $myrollno;
		foreach($subjarray as $hi){
			//echo $hi." ".$marksarray[$subjarray[$x]];
			$subject=$hi;
			$submark=$marksarray[$subjarray[$x]];
			echo $subject." ".$submark;
		mysqli_query($db,"UPDATE `$quizclass` SET `$subject`=$submark WHERE ID='{$myrollno}';");
			$x++;
		}
		if(mysqli_query($db,"UPDATE `$quizclass` SET `DONE`=1 WHERE ID='{$myrollno}';")){
			?>
		<script type='text/javascript'>alert('Attendance has been recorded');</script>
		<?PHP
			header("Location: ./studentProfile.php");
		}
		
	}

?>
<!DOCTYPE html>
<html>
<head>
	<title>QUIZ</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="css/styles/quiz.css">

</head>
<body>

<!-- BODY STARTS HERE -->
	<!-- NAVBAR GOES HERE -->
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
<div class="container my-formdiv">
<?php
$db=mysqli_connect("localhost","root","","cms") or die("couldnot connect");
if(substr($_SESSION['ID'],0,2)=="SE"){
	$subjarray=array("OS","COA","CG","AOA");
	$marksarray=array("OS"=>0,"COA"=>0,"CG"=>0,"AOA"=>0);
}
else if(substr($_SESSION['ID'],0,2)=="TE"){
	$subjarray = array("DD","SPCC","SE","MCC");
	$marksarray=array('DD'=>0,'SPCC'=>0,'SE'=>0,'MCC'=>0);
}
else{
	$subjarray = array("HMI","DWM","PDS","ELEC");
	$marksarray=array('HMI'=>0,'DWM'=>0,'PDS'=>0,'ELEC'=>0);
}
$result=mysqli_query($db,"Select * from $yearss;");
?>

<form action="quiz.php" method="post">
<?php

$quizclass = strtolower($_SESSION['myyear'])."_quizmarks";

//echo $quizclass;
$myrollno =$_SESSION['ID'];
$flag =mysqli_fetch_array(mysqli_query($db,"select * from $quizclass where ID='{$myrollno}';"));
$xyz= $flag['DONE'];
$sub=array();
$i=1;
$my=mysqli_query($db,"select * from $quizclass where ID='{$myrollno}';");
$myres=mysqli_fetch_array(mysqli_query($db,"select * from $quizclass where ID='{$myrollno}';"));
while ($i < mysqli_num_fields($my)){
			$meta = mysqli_fetch_field($my);
			$sub[]=   $meta->name ;
			$i = $i + 1;
		}
		
if($xyz==1){
?>
<div class="form-group jumbotron" style="background:none;">
<div class="container">
<h2 class="text-center">You have already appeared for the quiz</h2>
</div>
<table class="table table-striped table-bordered"  >

	<tr class="row">
	<?php
	for($i=0;$i<count($sub);$i++){
	?>
		<th><?php echo $sub[$i]; ?></th>
	<?php
	}
	?>
	</tr>
	<tr class="row">
	<?php
	for($i=0;$i<count($sub);$i++){
	?>
		<td><?php echo $myres[$sub[$i]]; ?></td>
	<?php
	}
	?>
	</tr>
	
</table>
</div>

<div class="container">
<h2>ANSWER KEY:</h2>
<?php $k=0; 
if(substr($_SESSION['ID'],0,2)=="BE"){
	if((int)substr($_SESSION['ID'],2,4)>=41&&(int)substr($_SESSION['ID'],2,4)<=72){
		$subjarray[3]="DF";
	}
	else{
		$subjarray[3]="ML";
	}
}?>
<table class="table table-bordered"  >
	<?php
	while($abc=mysqli_fetch_array($result)){
		if($abc['QNO']%5==1){
		?>
		<tr class="row">
		<td ><b><h3><?php echo $subjarray[$k++] ?></h3></b></td>
		</tr>
		<?php
		}
	?>
	<tr class="row">
		<td class="col-sm-6"><?php echo $abc['Question']?></td>
		<td  class="col-sm-6"><?php echo $abc['OptionC']?></td>
	</tr>
	<?php
	}
	?>
</table>
</div>
<?php
}
else{	
if(substr($_SESSION['ID'],0,2)=="BE"){
	if((int)substr($_SESSION['ID'],2,4)>=41&&(int)substr($_SESSION['ID'],2,4)<=72){
		$subjarray[3]="DF";
	}
	else{
		$subjarray[3]="ML";
	}
}
$QNO=1;
$k=0;
?>
		<h3>YOU GET ONLY ONE CHANCE</h3>
		
	<?php
while($row=mysqli_fetch_array($result)){
	
	if($QNO%5==1){
		?>
		<hr>
	<div class="form-group">
		<h2 class="text-center"><u>
		<?php 
		echo $subjarray[$k++] 
		?></u></h2>
	</div>
	<?php
	}
	?>
		
		<div class="form-group">
					<div class="row question-list">
					
					<h4><?php echo $row['Question'] ?></h4>
						<div class="row">
							<label class="radio-inline">
								<input type="radio" name="<?php echo $QNO ?>" value="<?php echo $row['Option1']?>" required="required"><?php echo $row['Option1'] ?>
							</label>
						</div>
						<div class="row">
							<label class="radio-inline">
								<input type="radio" name="<?php echo $QNO ?>" value="<?php echo $row['Option2']?>" required="required"><?php echo $row['Option2'] ?>
							</label>
						</div>
						<div class="row">
							<label class="radio-inline">
								<input type="radio" name="<?php echo $QNO?>" value="<?php echo $row['Option3']?>" required="required"><?php echo $row['Option3'] ?>
							</label>
						</div>
						<div class="row">
							<label class="radio-inline">
								<input type="radio" name="<?php echo $QNO ?>" value="<?php echo $row['Option4']?>" required="required"><?php echo $row['Option4'] ?>
							</label>
						</div>
					</div>
					
		</div>
	<?php
	$QNO++;
	}
	?>
		<div class="form-group">
			<button class="btn btn-md btn-danger btn-block" type="submit" name="quiz">Submit QUIZ</button>
		</div>
	<?php
}
	?>
</form>
</div>

<script language="javascript" src="js/jquery-3.2.0.js"></script>
<script language="javascript" src="js/bootstrap.js"></script>
</body>
</html>
