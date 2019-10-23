<?php
	$db=mysqli_connect("localhost","root","","cms");
	$result=mysqli_query($db,"select * assignment;");
	while($row=mysqli_fetch_array($result)){
		echo $row['Subject'];
	}
?>