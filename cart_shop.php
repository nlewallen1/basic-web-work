<?php
include "cart_checklogin.php"
?>
<html>
<head>
<title>Search for product</title>
</head>
<body>
<form method='POST'>
<p><label for="searchinfo">Search for: </label>
<input type="text" id='searchinfo' name='searchinfo'></p>
<p><input type="submit" value="Search"></p>
</form>
<?php
if ( isset( $_POST["searchinfo"] ) ) {
	# make the connection to the database

	# get the list of products
	$stmt = $dbh->prepare( "SELECT id, product_name, list_price, category, " .
			"picture_url FROM products WHERE product_name LIKE ? " .
			"OR category LIKE ?" );
	$stmt->execute( array( "%" . $_POST["searchinfo"] . "%",
				"%" . $_POST["searchinfo"] . "%" ) );
	if ( $stmt->rowCount() > 0 ) {
		echo "<table>";
		echo "<tr><th></th><th>Product</th><th>Price</th><th>Category</th></tr>";
		# display each row of the result as a table row
		while( $data = $stmt->fetch() ) {
			echo "<tr><td>" . 
				"<form method='POST' action='cart_addtocart.php'>"
				. "<input type='hidden' name='pid' id='pid' value=" . $data["id"] . ">"
				. "<input type='image' src='/img/" . $data["picture_url"]
				. "' height=50 alt='Submit'></form>"
				. "</td><td>" . $data["product_name"] 
				. "</td><td align='right'>$" .
				number_format($data["list_price"],2)
				. "</td><td>" . $data["category"] . "</td></tr>";
		}
		echo "</table>";
	} else {
		echo "<p>Sorry, nothing matches that search term</p>";
	}
}

# disconnect from the database
$dbh = null;
?>
<form action="cart_viewcart.php">
<input type="submit" value="View Cart" >
</form>
<form method='POST' action="cart_login.php">
<input type="submit" value="Log out">
</form>
</body>
</html>