<?php
include "cart_checklogin.php";

# are they trying to remove something?
if ( isset( $_POST["remid"] ) ) {
	# yes, removing an item
	$newCartContents = array();
	
	# if not the deleted entry, copy overload
	foreach ( $_SESSION["cartContents"] as $prodInfo ) {
		# split id and Quantity
		list( $pid, $quantity ) = $prodInfo;
		
		if ( $_POST["remid"] != $pid ) {
			// not what we are deleting
			array_push( $newCartContents, $prodInfo );
		}
	}
	
	$_SESSION["cartContents"] = $newCartContents;
}
?>

<html>
<head>
<title>Display Cart Contents</title>
</head>
<body>
<?php
# how much do they owe?
$totalCost = 0;

if ( count($_SESSION["cartContents"]) > 0 ) {
	echo "<table>";
	echo "<tr><th></th><th>Product</th><th>Price</th><th>Quantity</th><th></th></tr>";

	foreach ( $_SESSION["cartContents"] as $prodInfo ) {
		# split id and Quantity
		list( $pid, $quantity ) = $prodInfo;
		
		$stmt = $dbh->prepare( "SELECT product_name, list_price, " .
				"picture_url FROM products WHERE id = ?" );
		$stmt->execute( array( $pid ) );
		if ( $stmt->rowCount() > 0 ) {
			
			# display each row of the result as a table row
			while( $data = $stmt->fetch() ) {
				echo "<tr><td><img src='/img/" . $data["picture_url"] . 
							"' height=50>" .
					"</td><td>" . $data["product_name"] .
					"</td><td align='right'>$" .
					number_format($data["list_price"],2) .
					"</td><td align='center'>" . $quantity . "</td>" .
					"<td><form method='POST'>" .
					"<input type='hidden' id='remid' name='remid' value='$pid'>" .
					"<input type='submit' value='Remove' ></form>" .
					"</td></tr>";
					
				$totalCost += $data["list_price"] * $quantity;
			}
		}
	}
	echo "</table>";

	echo "<p>Total amount: $" . number_format($totalCost,2) . "</p>";
	$_SESSION["totalCost"] = $totalCost;
} else {
	echo "<p>Cart is empty</p>";
}
# disconnect from the database
$dbh = null;
?>
<form action="cart_shop.php">
<input type="submit" value="Continue shopping" >
</form>
<form action="cart_checkout.php">
<?php
if ( count($_SESSION["cartContents"]) > 0 ) {
	# cart has items
	echo "<input type='submit' value='Checkout' >";
} else {
	#cart is empty
	echo "<input type='submit' value='Checkout' disabled >";
}
?>
</form>

<form method='POST' action="cart_login.php">
<input type="submit" value="Log out">
</form>
</body>
</html>