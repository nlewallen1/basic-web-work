<?php
session_set_cookie_params( 3600, "/" );
session_start();

# do we have the customer's id?
if ( ! isset( $_SESSION["companyid"] ) ) {
	# if not set, then they did not log in
	header("Location:cart_login.php");
}

# create the connection to the database
$dbh = new PDO( "mysql:host=localhost;dbname=northwind",
				"csc313", "1234" );
?>