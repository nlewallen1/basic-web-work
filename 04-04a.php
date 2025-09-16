<html> 
<head> 
<title>Calculate Primes</title> 
</head> 
<body style = "background-color:yellow"> 
<form method="POST">
<p>Base: <input type ="number" id = "base" name = "base"></p>
<p>Exponent: <input type="number" id="exp" name="exp"></p>
<p><input type="submit" value = "Calculate Power"></p>
</form>
<?php 
// is this the first time they came to the page
if (isset($_POST["base"])) {
	
	// verify they are numbers
	if(! is_numeric($_POST["base"])) {
		echo "The base must be an integer!";
	} elseif (! is_numeric($_POST["exp"])) {
		echo "The exponent must be a number";

	} else {
	$base = intval($_POST["base"]);
	$expVal = intval($_POST["exp"]);
	
	$result = $base;
	
	echo "<p>The value of " . $base . "<sup>" . $expVal . "</sup> is: ";
	
	for ($i = 1; $i < $expVal; $i++) {
		$result *= $base;
	}
	echo $result;
	}
}
?> 
</body> 
</html>