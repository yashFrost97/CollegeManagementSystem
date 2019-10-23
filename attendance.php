<?php
	session_start();
	if(isset($_POST['submit'])){
		$db=mysqli_connect("localhost","root","","cms") or die("could not connect");
		$date=$_POST['date'];
		$classtable =$_SESSION['subclass'];
		mysqli_query($db,"ALTER TABLE `$classtable` ADD `$date` INT(1) NOT NULL ;");
		$query="select * from $classtable;";
		$result=mysqli_query($db,$query);
		$p=mysqli_num_rows($result);
		echo $classtable;
	
		if($_SESSION['ID']=="C12" && $classtable=="BE_ELEC"){
			$START=0;
			$p=40;
		}
		else if($_SESSION['ID']=="C13" && $classtable=="BE_ELEC"){
			$START=41;
			$p=72;
		}
		else{
			$START=0;
		}
		while($row=mysqli_fetch_array($result)){
			$q= $row['No'];
		$q=$row['No'];
		if(($q>=$START) && ($q<=$p)){
			if($_POST[$row['ID']]==1){
			mysqli_query($db,"update $classtable set `$date`=1 where ID='{$row['ID']}';");
			}
		}	
		}
		?>
		<script type='text/javascript'>alert('Attendance has been recorded');</script>
		<?PHP
		header("Location: ./teacherProfile.php");
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
	
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
	
	<!--Subject Options-->
	<div class="container" >
	<form action="attendance.php" method="post">
		<table style="margin:0 auto">
            <div class="form-group">                
                    <input type='date' class="form-control" name="date" required="required">    
            </div>
       
		<?php
		$db=mysqli_connect("localhost","root","","cms") or die("could not connect");
		$classtable=$_SESSION['subclass'];
		$query="select * from $classtable;";
		$result=mysqli_query($db,$query);
		$p=mysqli_num_rows($result);
		//echo $_SESSION['ID'];
		if($_SESSION['ID']=="C12" && $classtable=="BE_ELEC"){
			$START=0;
			$p=40;
		}
		else if($_SESSION['ID']=="C13" &&$classtable=="BE_ELEC"){
			$START=41;
			$p=72;
		}
		else{
			$START=0;
		}
		while($row=mysqli_fetch_array($result)){
			$q=$row['No'];
		if(($q>=$START) && ($q<=$p)){
				//echo $START;
				//echo $p;
			?>
			<div class="row">
				<div class='col-sm-3'></div>
				<div class='col-sm-3'><?php echo $row['ID'] ?></div>
					
				<div class='col-sm-3'>
					<select name="<?php echo $row['ID'] ?>" id="<?php echo $row['ID']?>">
						<option value="1" style="color:green;">Present</option>
						<option value="0">Absent</option>
					</select>
				</div>	
				<div class='col-sm-3'></div>
				<hr>
			</div>
		<?php
		$q++;
		}
		}
		?>
		
	</table>
	<button class="btn btn-lg btn-danger btn-block" type="submit" name="submit"> <i class="fa fa-pen" aria-hidden="true"></i>SUBMIT</button>
	</div>
	</form>
	<!--Subjects ends here-->
<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>
