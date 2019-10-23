<?php
	
		session_start();
		$db=mysqli_connect("localhost","root","","cms");
		if(substr($_SESSION['ID'],0,2)=="SE"){
				$subjects=array('COA-KRUNALI VARTAK','COA-SUNIL KATKAR','AOA-SWEETY RUPANI','AOA-KOMAL NAIK','OS-SHRADDHA SARODE','OS-VIKRANT AGASKAR','MATHS-PRANALI SAPRE','OSTL-SWEETY RUPANI','CG-SUNIL KATKAR');
				$xyz=array('COA-KRUNALI VARTAK'=>"SE_COA1",'COA-SUNIL KATKAR'=>"SE_COA2",'AOA-SWEETY RUPANI'=>"SE_AOA1",'AOA-KOMAL NAIK'=>"SE_AOA2",'OS-SHRADDHA SARODE'=>"SE_OS1",'OS-VIKRANT AGASKAR'=>"SE_OS2",'MATHS-PRANALI SAPRE'=>"SE_MATHS",'OSTL-SWEETY RUPANI'=>"SE_OSTL",'CG-SUNIL KATKAR'=>"SE_CG");
		}
			if(substr($_SESSION['ID'],0,2)=="TE"){
				$subjects=array('DD-SMITA JAWALE','SE-KRUNALI VARTAK','MCC-SANKET PATIL','MCC-SNEHA MHATRE','SPCC-ANIL HINGMIRE');
				$xyz=array('DD-SMITA JAWALE'=>"TE_DD",'SE-KRUNALI VARTAK'=>"TE_SE",'MCC-SANKET PATIL'=>"TE_MCC1",'MCC-SANKET PATIL'=>"TE_MCC2",'SPCC-ANIL HINGMIRE'=>"TE_SPCC");
			}
			if(substr($_SESSION['ID'],0,2)=="BE"){
				$subjects=array('DWM-SWAPNA BORDE','PDS-SANGITA CHAUDHARI','HMI-ANIL HINGMIRE','ELECTIVE-KOMAL NAIK');
				$xyz=array('DWM-SWAPNA BORDE'=>"BE_DWM",'PDS-SANGITA CHAUDHARI'=>"BE_PDS",'HMI-ANIL HINGMIRE'=>"BE_HMI",'ELECTIVE-KOMAL NAIK'=>"BE_ELEC1");
				if((int)substr($_SESSION['ID'],2,4)>=41&&(int)substr($_SESSION['ID'],2,4)<=72){
					$subjects=array('DWM-SWAPNA BORDE','PDS-SANGITA CHAUDHARI','HMI-ANIL HINGMIRE','ELECTIVE-SHRADDHA SARODE');
				$xyz=array('DWM-SWAPNA BORDE'=>"BE_DWM",'PDS-SANGITA CHAUDHARI'=>"BE_PDS",'HMI-ANIL HINGMIRE'=>"BE_HMI",'ELECTIVE-SHRADDHA SARODE'=>"BE_ELEC2");
				}
			}
			
		if(isset($_POST['feed'])){
		$mycount=0;
		$j=0;
		for($i=0;$i<count($subjects);$i++){
		$mysubject=$subjects[$j++];
		
		$result=mysqli_query($db,"select * from feedback;");
		while($row=mysqli_fetch_array($result)){
		$mycount++;
		//if($mycount%8==0)
			//continue;
		//echo $mysubject;
		//echo $mycount ." " .$_POST[$mycount]."<br>";
		$my=$xyz[$mysubject];
		echo $_POST[$mycount]."   ".$row[$my]."<br>";
		//echo $row[$my];
		//
		$total=$_POST[$mycount]+$row[$my];
		mysqli_query($db,"update feedback set $my=$total where QNO={$row['QNO']};");
		}
		}
	
		$x=mysqli_query($db,"update feedgiven set value=1 where ID='{$_SESSION['ID']}';");
		if($x){
			
		header("Location: ./studentProfile.php");
		}
		}
	
?>
<!DOCTYPE html>
<html>
<head>
	<title>FEEDBACK</title>
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

	<!-- QUIZ/FEEDBACK FORM STARTS HERE -->
	<div class="container my-formdiv" style="margin-top:5%">
		
			<form action="feed.php" method="post"> 
			<?php
			
			$db=mysqli_connect("localhost","root","","cms");
			$row=mysqli_fetch_array(mysqli_query($db,"select * from feedgiven where ID='{$_SESSION['ID']}';"));
			$flag=$row['value'];
			if($flag==1){
			?>
			<div class="form-group" >
			<h2 class="text-center" ><?php echo "You have already Submitted feedback form."; ?></h2>
			</div>
			<?php
			}
			else{
			?>
			<h4><i>>>>>Please rate according to below criteria</i></h4>
		<h5>1.VERY BAD</h5>
		<h5>2.BAD</h5>
		<h5>3.GOOD</h5>
		<h5>4.VERY GOOD</h5>
		<hr>
			<div class="form-group" style="margin-top:1%">
			<?php
			if(substr($_SESSION['ID'],0,2)=="SE"){
				$subjects=array('COA-KRUNALI VARTAK','COA-SUNIL KATKAR','AOA-SWEETY RUPANI','AOA-KOMAL NAIK','OS-SHRADDHA SARODE','OS-VIKRANT AGASKAR','MATHS-PRANALI SAPRE','OSTL-SWEETY RUPANI','CG-SUNIL KATKAR');
				$xyz=array('COA-KRUNALI VARTAK'=>"SE_COA1",'COA-SUNIL KATKAR'=>"SE_COA2",'AOA-SWEETY RUPANI'=>"SE_AOA1",'AOA-KOMAL NAIK'=>"SE_AOA2",'OS-SHRADDHA SARODE'=>"SE_OS1",'OS-VIKRANT AGASKAR'=>"SE_OS2",'MATHS-PRANALI SAPRE'=>"SE_MATHS",'OSTL-SWEETY RUPANI'=>"SE_OSTL",'CG-SUNIL KATKAR'=>"SE_CG");	}
			if(substr($_SESSION['ID'],0,2)=="TE"){
				$subjects=array('DD-SMITA JAWALE','SE-KRUNALI VARTAK','MCC-SANKET PATIL','MCC-SNEHA MHATRE','SPCC-ANIL HINGMIRE');
				$xyz=array('DD-SMITA JAWALE'=>"TE_DD",'SE-KRUNALI VARTAK'=>"TE_SE",'MCC-SANKET PATIL'=>"TE_MCC1",'MCC-SANKET PATIL'=>"TE_MCC2",'SPCC-ANIL HINGMIRE'=>"TE_SPCC");
			}
			if(substr($_SESSION['ID'],0,2)=="BE"){
				$subjects=array('DWM-SWAPNA BORDE','PDS-SANGITA CHAUDHARI','HMI-ANIL HINGMIRE','ELECTIVE-KOMAL NAIK');
				$xyz=array('DWM-SWAPNA BORDE'=>"BE_DWM",'PDS-SANGITA CHAUDHARI'=>"BE_PDS",'HMI-ANIL HINGMIRE'=>"BE_HMI",'ELECTIVE-KOMAL NAIK'=>"BE_ELEC1",);
			}
			?>
			</div>
			
			<?php
			if(substr($_SESSION['ID'],0,2)=="BE"){
				if((int)substr($_SESSION['ID'],2,4)>=41&&(int)substr($_SESSION['ID'],2,4)<=72){
					$subjects=array('DWM-SWAPNA BORDE','PDS-SANGITA CHAUDHARI','HMI-ANIL HINGMIRE','ELECTIVE-SHRADDHA SARODE');
				$xyz=array('DWM-SWAPNA BORDE'=>"BE_DWM",'PDS-SANGITA CHAUDHARI'=>"BE_PDS",'HMI-ANIL HINGMIRE'=>"BE_HMI",'ELECTIVE-SHRADDHA SARODE'=>"BE_ELEC2",);
				}
			}
			$count=0;
			$x=0;
			FOR($i=1;$i<=count($subjects);$i++,$count++){
			$result=mysqli_query($db,"select * from feedback;");
			?>
			<hr>
			<h2><u><b><?php echo $subjects[$x++] ?></b></u></h2>
			<?php
			//$count--;
			while($row=mysqli_fetch_array($result)){
			
			?>
			
				<div class="form-group">
					<div class="row question-list">
					
						<?php
							$count++;
						?>
						<h4><?php echo $row['QNO'].'.'.$row['Questions'] ?></h4>
						<div class="col-sm-3">
							<label class="radio-inline">
								<input type="radio" name="<?php echo $count ?>" value="1" required="required">1
							</label>
						</div>
						<div class="col-sm-3">
							<label class="radio-inline">
								<input type="radio" name="<?php echo $count ?>" value="2" required="required">2
							</label>
						</div>
						<div class="col-sm-3">
							<label class="radio-inline">
								<input type="radio" name="<?php echo $count ?>" value="3" required="required">3
							</label>
						</div>
						<div class="col-sm-3">
							<label class="radio-inline">
								<input type="radio" name="<?php echo $count ?>" value="4" required="required">4
							</label>
						</div>
						
					</div>
				</div>
				
			<?php
			
			}
			$count--;
			}
			?>
			<div class="form-group">
				<button class="btn btn-md btn-danger btn-block" type="submit" name="feed">Submit FEEDBACK</button>
			</div>
			<?php
			}
			?>
		</form>
	</div>
<script type="text/javascript" src="js/jquery-3.2.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>	
</body>
</html>