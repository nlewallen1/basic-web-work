<html>
<head>
<title>Calculate Tax</title>
</head>
<body style="background-color:yellow">
<form method="POST">
    <p><label for="income">Income: </label>
    <input type="number" id="income" name="income"></p>
    <p><input type="submit" value="Calculate the tax"/></p>
</form>
<?php
if (isset($_POST["income"])) {
    if (!is_numeric($_POST["income"])) {
        echo "The income must be a number!";
    } else {
        $income = intval($_POST["income"]);
        $taxDue = 0;

        if ($income < 0) {
            $taxDue = 0;
        } elseif ($income <= 10000) {
            $taxDue = $income * 0.70;
        } elseif ($income <= 100000) {
            $taxDue = ($income - 10000) * 0.90 + 7000;
        } else {
            $taxDue = ($income - 100000) * 1.10 + 88000;
        }

        echo "You owe $" . $taxDue . " in taxes";
    }
}
?>
</body>
</html>
