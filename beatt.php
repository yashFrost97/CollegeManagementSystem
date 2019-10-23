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
	<?php
		$percentage=array(array());
		$db=mysqli_connect("localhost","root","","cms") or die("could not connect");
		$subject='be_hmi';
		$query="select * from $subject where ID='{$_SESSION['ID']}';";
		$result=mysqli_query($db,$query);
		$columns = array();
		$i=0;
		while ($i < mysqli_num_fields($result)){
			$meta = mysqli_fetch_field($result);
			$columns[]=   $meta->name ;
			$i = $i + 1;
		}
		
		$i=1;
		while($row=mysqli_fetch_array($result)){
			$percentage[0][$i]=0;
			
			$attend=mysqli_fetch_array(mysqli_query($db,"select * from $subject where ID='{$_SESSION['ID']}';"));
			for($date=2;$date<mysqli_num_fields($result);$date++){
				$percentage[0][$i]+=$attend[$columns[$date]];
			}
			$percentage[0][$i]=($percentage[0][$i]*100)/(mysqli_num_fields($result)-2);
			$i++;
		}
		
		$subject='be_pds';
		$query="select * from $subject where ID='{$_SESSION['ID']}';";
		$result=mysqli_query($db,$query);
		$columns = array();
		$i=0;
		while ($i < mysqli_num_fields($result)){
			$meta = mysqli_fetch_field($result);
			$columns[]=   $meta->name ;
			$i = $i + 1;
		}
		
		$i=1;
		while($row=mysqli_fetch_array($result)){
			$percentage[1][$i]=0;
			
			$attend=mysqli_fetch_array(mysqli_query($db,"select * from $subject where ID='{$_SESSION['ID']}';"));
			for($date=2;$date<mysqli_num_fields($result);$date++){
				$percentage[1][$i]+=$attend[$columns[$date]];
			}
			$percentage[1][$i]=($percentage[1][$i]*100)/(mysqli_num_fields($result)-2);
			$i++;
		}
		
		
		$subject='be_dwm';
		$query="select * from $subject where ID='{$_SESSION['ID']}';";
		$result=mysqli_query($db,$query);
		$columns = array();
		$i=0;
		while ($i < mysqli_num_fields($result)){
			$meta = mysqli_fetch_field($result);
			$columns[]=   $meta->name ;
			$i = $i + 1;
		}
		$i=1;
		while($row=mysqli_fetch_array($result)){
			$percentage[2][$i]=0;
			
			$attend=mysqli_fetch_array(mysqli_query($db,"select * from $subject where ID='{$_SESSION['ID']}';"));
			for($date=2;$date<mysqli_num_fields($result);$date++){
				$percentage[2][$i]+=$attend[$columns[$date]];
			}
			$percentage[2][$i]=($percentage[2][$i]*100)/(mysqli_num_fields($result)-2);
			$i++;
		}
		
		$subject='be_elec';
		$query="select * from $subject where ID='{$_SESSION['ID']}';";
		$result=mysqli_query($db,$query);
		$columns = array();
		$i=0;
		while ($i < mysqli_num_fields($result)){
			$meta = mysqli_fetch_field($result);
			$columns[]=   $meta->name ;
			$i = $i + 1;
		}
		$i=1;
		while($row=mysqli_fetch_array($result)){
			$percentage[3][$i]=0;
			
			$attend=mysqli_fetch_array(mysqli_query($db,"select * from $subject where ID='{$_SESSION['ID']}';"));
			for($date=2;$date<mysqli_num_fields($result);$date++){
				$percentage[3][$i]+=$attend[$columns[$date]];
			}
			$percentage[3][$i]=($percentage[3][$i]*100)/(mysqli_num_fields($result)-2);
			$i++;
		}
		
		//Transpose array
		$total=array();
		foreach ($percentage as $row => $columns) {
			foreach ($columns as $row2 => $column2) {
				$total[$row2][$row] = $column2;
			}
		}
		?>
		<div class="container" style="margin-top:10%; width: 45%;">
		<h3 class="text-center">YOUR ATTENDANCE IN PERCENTAGE TILL TODAY</h3><br>
		<table class="table table-striped table-bordered">
		<tr class="row">
			<th class="col-md-3 text-center">Roll No</th>
			<th class=" text-center">DWM</th>
			<th class=" text-center">PDS</th>
			<th class="text-center">HMI</th>
			<th class="text-center">ELEC</th>
		</tr>
		<?php
		$roll=1;
		foreach($total as $col){
			?>
			<tr class="row">
			<td class="col-md-3 text-center"><?php echo $roll ?></td>
			<?php
				foreach($col as $def){
					if($def<75){
						?>	
							<td class=" text-center" style="background:red;"><?php echo round($def,2)?></td>
						<?php
					}
				
					else{
						?>	
							<td class=" text-center"><?php echo round($def,2)?></td>
						<?php
					}
				}
				$roll++;
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