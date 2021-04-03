<html>
<head>
<title>Delete players</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php
$name=$_POST["name"];
$surname=$_POST["surname"];
echo("Name: ".$name."<br>");
echo("Surname: ".$surname."<br>");

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q3="Delete from players WHERE Name='$name' AND Surname='$surname'";
mysql_query($q3) or die ("Delete error");
echo("Delete successful!");
?>
</body>
</html>