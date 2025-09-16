<html>
<head>
<title>Temperature Conversion</title>
</head>
<body style="background-color:yellow">
<form method="POST">
    <p><label for="curTemp">Temperature: </label>
    <input type="number" id="curTemp" name="curTemp"></p>
    <p><input type="submit" value="F -> C" id="ftoc" name ="ftoc"/></p>
    <p><input type="submit" value="C -> F" id="ctof" name ="ctof"/></p>
</form>
<?php
// Check if F -> C is requested
if (isset($_POST["ftoc"])) {
    if (!is_numeric($_POST["curTemp"])) {
        echo "<p>The current temperature must be a number!</p>";
    } else {
        // Perform conversion F -> C
        $curTemp = intval($_POST["curTemp"]);
        $newTemp = ($curTemp - 32) * (5/9);
        print "<p>$curTemp&deg;F equals $newTemp&deg;C</p>";
    }
} elseif (isset($_POST["ctof"])) {
    if (!is_numeric($_POST["curTemp"])) {
        echo "<p>The current temperature must be a number!</p>";
    } else {
        // Perform conversion C -> F
        $curTemp = intval($_POST["curTemp"]);
        $newTemp = $curTemp * (9/5) + 32;
        print "<p>$curTemp&deg;C equals $newTemp&deg;F</p>";
    }
}
?>
</body>
</html>
