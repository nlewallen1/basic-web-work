<html>
<head><title>Days left before Christmas</title>
<style>
body {
	background-color:green;
	
	color: red;
}
</style>
</head>
<body>
<?php
	$today_dti = new DateTimeImmutable("now",
		new DateTimeZone("America/New_York"));
	
	$year = $today_dti->format("Y");
	$christmas_dti = new DateTimeImmutable($year . "-12-25",
		new DateTimeZone("America/New_York"));
	
	$time_left = $christmas_dti->diff($today_dti);
	echo"<p>There are " . $time_left->format("%a") . " days until christmas</p>";
?>
</body>
</html>