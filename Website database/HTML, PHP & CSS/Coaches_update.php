<html>
<head>
<title>Update coaches</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php
$name=$_POST["name"];
$surname=$_POST["surname"];
$email=$_POST["email"];
echo("Name:".$name."<br>");
echo("Surname:".$surname."<br>");
echo("Email:".$email."<br>");

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q2="Update coaches set Email='$email' where Name='$name' and Surname='$surname'";
mysql_query($q2) or die ("Update error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo "<table border='1'>
<tr><th>Name</th><th>Surname</th><th>Email</th></tr>";
	echo "<tr><td style='text-align:center'>" . $name. "</td><td style='text-align:center'>".$surname."</td><td style='text-align:center'>".$email."</td></tr>";
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Update successful!");
?>
</body>
</html>