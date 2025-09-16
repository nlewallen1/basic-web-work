<?php
include "cart_checklogin.php";

# make sure we have something in the cart_checklogin
if ( ! isset($_SESSION["cartContents"]) 
		|| count($_SESSION["cartContents"]) == 0 ) {
	#cart is empty
	header("Location:cart_shop.php");
}
?>
<html>
<head>
<title>Checkout</title>
</head>
<body>
<form method='POST' action='cart_orderplaced.php'>
<?php
# query the database for customer info
$stmt = $dbh->prepare("SELECT company, address, city, " .
		"state_province, zip_postal_code FROM customers WHERE id = ?" );
$stmt->execute( array( $_SESSION["companyid"] ) );
if ( $stmt->rowCount() == 1 ) {
	# have information about the customer
	$data = $stmt->fetch();

	# copy to individual variables
	$cname = $data["company"];
	$address = $data["address"];
	$city = $data["city"];
	$state = $data["state_province"];
	$zip = $data["zip_postal_code"];
	
	echo "<p><label for='cname'>Name: " .
		"<input type='text' id='cname' name='cname' value='$cname'></p>";
	echo "<p><label for='addr'>Address: " .
		"<input type='text' id='addr' name='addr' value='$address'></p>";
	echo "<p><label for='city'>City: " .
		"<input type='text' id='city' name='city' value='$city'></p>";
	echo "<p><label for='state'>State: " .
		"<input type='text' id='state' name='state' value='$state'></p>";
	echo "<p><label for='zip'>Zip: " .
		"<input type='text' id='zip' name='zip' value='$zip'></p>";

	echo "<p>Amount Due: $" . number_format($_SESSION["totalCost"],2) . "</p>";

    echo "<p><input type='submit' value='Place Order'></p>";
} else {
	# no entry?
	echo "<p>Error: customer information not found</p>";
}

$stmt = null;
$dbh = null;
?>
</form>

<form action="cart_shop.php">
<input type="submit" value="Continue shopping" >
</form>

<form method='POST' action="cart_login.php">
<input type="submit" value="Log out">
</form>
</body>
</html>