<?php
	session_start();
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
		else if($_SESSION['ID']=="C13" && $_SESSION['MYsubj']="BE_ELEC"){
			$START=41;
			$p=72;
		}
		else{
			$START=0;
		}
		//echo $START;
		//echo $p;
	
if(isset($_POST['marks'])){
		$result=mysqli_query($db,"Select ROllNo,$subject from $class;");
		
		while($row=mysqli_fetch_array($result)){
			$q= substr($row['ROllNo'],2,4);
		//echo $q;
		if(($q>=$START) && ($q<=$p)){
			$index = $_POST[$row['ROllNo']];
			mysqli_query($db,"Update $class set $subject=$index where ROllNo='{$row['ROllNo']}';");
		}
		}
		header("Location: ./teacherProfile.php");
		
	}
?>