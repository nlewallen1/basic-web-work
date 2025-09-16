<?php
session_set_cookie_params( 3600, "/" );
session_start();

# do they have an existing session?
if ( isset( $_SESSION["companyid"] ) ) {
	# yes, currently logged in
	session_destroy();
	
	# and prepare for a new session
	session_start();
}

if ( isset( $_POST['cname'] ) ) {
	# make the connection to the database
	$dbh = new PDO( "mysql:host=localhost;dbname=northwind",
				"csc313", "1234" );

	# get the information for the selected customer
	$stmt=$dbh->prepare("SELECT id,password FROM customers WHERE company LIKE ?" );
	$stmt->execute( array( $_POST["cname"] ) );
	if ( $stmt->rowCount() > 0 ) {
		$data = $stmt->fetch();
# did they type the correct password?
		if ( password_verify( $_POST["pwd"], $data["password"] ) ) {
			# remember who they are
			$_SESSION["companyid"] = $data["id"];
			
			# create an empty cart
			$_SESSION["cartContents"] = array();

			# redirect to the shopping Page
			header("Location:cart_shop.php");
		}
	}
	# disconnect from the database
	$dbh = null;
}
?>
<html>
<head>
<title>Login Page</title>
</head>
<body>
<form method='POST'>
<p><label for='lname'>Company Name:</label>
	<input type='text' id='cname' name='cname'></p>
<p><label for='pwd'>Password:</label>
	<input type='password' id='pwd' name='pwd'></p>
<p><input type='submit' value='Login'></p>
</form>
</body>
</html>