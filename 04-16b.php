<html>
<head>
<title>Display product list</title>
</head>
<body>
<?php
# make the connection to the database
$dbh = new PDO( "mysql:host=localhost;dbname=northwind",
			"csc313", "1234" );

# get the list of products
$res = $dbh->query( "SELECT id, product_name, list_price, " .
		"picture_url FROM products ORDER BY product_name" );
echo "<table>";
echo "<tr><th></th><th>Product</th><th>Price</th></tr>";
# display each row of the result as a table row
while( $data = $res->fetch() ) {
	echo "<tr><td>" . 
		"<form method='POST' action='04-16c.php'>"
		. "<input type='hidden' name='pid' id='pid' value=" . $data["id"] . ">"
		. "<input type='image' src='/img/" . $data["picture_url"]
		. "' height=50 alt='Submit'></form>"
		. "</td><td>" . $data["product_name"] 
		. "</td><td align='right'>$" .
		number_format($data["list_price"],2)
		. "</td></tr>";
}
echo "</table>";
# disconnect from the database
$dbh = null;
?>
</body>
</html>