
<?php
session_start();
?><!DOCTYPE html>
<html>
<head>
	<title>Quiz</title>
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
					<li><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
		  				<a href="#" aria-expanded="false">Logout <i class="fa fa-user" aria-hidden="true"></i></a>
					</li>		
				</ul>
			</div><!-- /.navbar-collapse -->
  		</div><!-- /.container-fluid -->
	</nav>

	<!-- QUIZ/FEEDBACK FORM STARTS HERE -->
	<div class="container my-formdiv">
		
			<form action="quiz.php" method="post"> 
			
			<?php
			$db=mysqli_connect("localhost","root","","cms");
			$result=mysqli_query($db,"select * from feedback;");
			$se=array('SE_COA','SE_AOA','SE_OS','SE_OSTL','SE_CG','SE_MATHS',);
			$_SESSION['Current']=$se[0];
			?>
			<div class="form-group" style="margin-top:1%">
			
			<?php echo $se[0];?>
			</div>
			<?php
			while($row=mysqli_fetch_array($result)){
			?>
				<div class="form-group">
					<div class="row question-list">
						<h4><?php echo $row['QNO'].'.'.$row['Questions'] ?></h4>
						<?php
						for($i=1;$i<=4;$i++){
							?>
						<div class="col-sm-3">
							<label class="radio-inline">
								<input type="radio" name="<?php echo $row['QNO'] ;?>" value="<?php echo $i ;?>" required="required"><?php echo $i ;?>
							</label>
						</div>
						<?php
						}
						?>
					</div>
				</div>
			<?php
			}
			?>
			<div class="form-group">
						<button class="btn btn-md btn-danger btn-block" type="submit" name="flogin">Submit FEEDBACK</button>
					</div>
			</form>
		</div>
	</div>


<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>	
</body>
</html>
<?php
if(isset($_POST['flogin'])){
$i=1;
$subject=$_SESSION['Current'];
for($ans=1;$ans<=7;$ans++){
	$row=mysqli_fetch_array(mysqli_query($db,"select * from feedback where`QNO`=$ans;"));
	$rate=$_POST[$i++];
	mysqli_query($db,"UPDATE `feedback` SET `$subject`=$rate WHERE `QNO`=$ans;");
}
}
?>