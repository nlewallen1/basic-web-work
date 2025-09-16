<?php
include "cart_checklogin.php";

# verify we have something that looks like a product id
#if ( ! isset( $_POST["pid"] ) || ! is_int( $_POST["pid"] ) ) {
# are they ready to add to the cart
if ( isset( $_POST["quantity"] ) ) {
	# is the value meaningful?
	if ( is_int( $_POST["quantity"] ) || $_POST["quantity"] <= 0 ) {
		# not a meaningful quantity
#		header("Location:cart_shop.php");
echo "<html><body><p>Bad Quantity: " . $_POST["quantity"] . "</p>";
echo "<p>Product id" . $_SESSION["curitem"] . "</p></body></html>";
		exit();
	}
	
	# is this already in the cart?
	$isInCart = false;
	foreach ( $_SESSION["cartContents"] as &$prodInfo ) {
		# split id and Quantity
		list( $pid, $quantity ) = $prodInfo;
		
		if ( $_SESSION["curitem"] == $pid ) {
			// yes, they already have it in the cart
			$quantity = $quantity + $_POST["quantity"];
			$prodInfo = array( $pid, $quantity );
			
			$isInCart = true;
		}
	}
	
	# ready to add it to the cart
	if ( ! $isInCart ) {
		array_push( $_SESSION["cartContents"],
			array( $_SESSION["curitem"], $_POST["quantity"] ) );
	}
	header("Location:cart_viewcart.php");

} else if ( ! isset( $_POST["pid"] ) ) {
	# no pid, something is wrong!
#	header("Location:cart_shop.php");
echo "<p>Product id" . $_POST["pid"] . "</p></body></html>";

	exit();
}
?>
<html>
<head>
<title>Add Product to cart</title>
</head>
<body>
<?php
if ( isset( $_POST["pid"] ) ) {
	$_SESSION["curitem"] = $_POST["pid"];
}

# get product information and also check that the id is valid
$stmt = $dbh->prepare( "SELECT product_name, list_price, picture_url "
		. "FROM products WHERE id = ?" );
$stmt->execute( array( $_SESSION["curitem"] ) );
if ( $stmt->rowCount() == 1 ) {
	# have the product information
	$data = $stmt->fetch();
	
	# extract the fields
	$product_name = $data["product_name"];
	$list_price = $data["list_price"];
	$picture_url = $data["picture_url"];
	
	
	
	# add this item to the cart
#	array_push( $_SESSION["cartContents"], $_POST["pid"] );
	echo "<p><img src='/img/" . $picture_url . "'></p>";
	echo "<p>$product_name (cost: $" .
				number_format($data["list_price"],2) . 
				")</p>";
} else {
	# no response (id is key, so should never have 2+ rows)
	echo "<p>Error: Cannot find that product. </p>";
#	echo $_SESSION["curitem"];
}
$stmt = null;

# disconnect from the database
$dbh = null;
?>
<form method='POST'>
<p><label for="quantity">Quantity: </label>
	<input type="number" id="quantity" name="quantity" 
			style="width:6em" value=1></p>
<input type="submit" value="Add to Cart" >
</form>

<form action="cart_shop.php">
<input type="submit" value="Continue shopping" >
</form>

<form action="cart_viewcart.php">
<input type="submit" value="View Cart" >
</form>

</body>
</html>