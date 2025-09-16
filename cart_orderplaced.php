<?php
include "cart_checklogin.php";
?>
<html>
<head>
<title>Order Placed</title>
</head>
<body>
<?php
$dbh->beginTransaction();
$transaction_successful = true;

# create the order
# have: customer_id, order_date, ship_name, ship_address
#		ship_city, ship_state_province, ship_zip_postal_code
$order_stmt = $dbh->prepare(
	"INSERT INTO orders (customer_id, order_date, ship_name, " .
	"ship_address, ship_city, ship_state_province, " .
	"ship_zip_postal_code) VALUES ( ?, CURDATE(), ?, ?, ?, ?, ? )" );
$order_stmt->execute( array( $_SESSION["companyid"], $_POST["cname"],
	$_POST["addr"], $_POST["city"], $_POST["state"], $_POST["zip"] ) );
\# verify it worked
if ( $order_stmt->rowCount() == 1 ) {
	# yes, the main order was placed
	$order_id = $dbh->lastInsertId();
	$order_stmt = null;
	
	# add the order details
	# have: order_id, product_id, quantity, unit_price
	foreach ( $_SESSION["cartContents"] as $prodInfo ) {
		# split id and quantity
		list( $pid, $quantity ) = $prodInfo;
		
		$price_stmt = $dbh->prepare( "SELECT list_price " .
				"FROM products WHERE id = ?" );
		$price_stmt->execute( array( $pid ) );
		if ( $price_stmt->rowCount() == 1 ) {
			# get the product details
			$data = $price_stmt->fetch();
			$price_stmt = null;
			
			# add this product to the order details table
			$detail_stmt = $dbh->prepare(
				"INSERT INTO order_details (order_id, product_id, ".
				"quantity, unit_price ) VALUES ( ?, ?, ?, ?)" );
			$detail_stmt->execute( array( $order_id, 
					$pid, $quantity, $data["list_price"] ) );
					
			# did it insert ok?
			if ( $detail_stmt->rowCount() != 1 ) {
				# problem occurred
				$transaction_successful = false;
			}
			$detail_stmt = null;
		} else {
			# can't get product list price_stmt
			$transaction_successful = false;
			$price_stmt = null;
		}
	}
} else {
	# had a problem adding the main Order
	$transaction_successful = false;
}

# is all ok?
if ( $transaction_successful ) {
	$dbh->commit();
	echo "<p>Order placed</p>";
} else {
	# problem somewhere along the way
	$dbh->rollback();
	echo "<p>There was a problem, order was cancelled</p>";
}
?>
<form method='POST' action="cart_login.php">
<input type="submit" value="Log out">
</form>
</body>
</html>