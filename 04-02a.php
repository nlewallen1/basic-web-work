<html> 
<head> 
<title>Calculate Primes</title> 
</head> 
<body style = "background-color:yellow"> 
<p>The prime numbers from 2 to 100 are:</p>
<p>
<ul>
<?php 
	// work through the numbers we want to test for being prime
	for($num=2; $num<=100; $num++) {
		// assume it is prime
		$isPrime = true;
		// check possible divisors
		for($div = 2; $div < $num; $div++) {
			if (($num % $div) == 0) {
				// have a divisor, so not prime
				$isPrime = false;
				break;
			}
		}
		if ($isPrime) {
			echo "<li>" . $num . "</li>";
		}
	}
?> 
</ul>
</p>
</body> 
</html>