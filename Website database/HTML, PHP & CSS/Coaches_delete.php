<html>
<head>
<title>Delete coaches</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php
$name=$_POST["name"];
$surname=$_POST["surname"];
$team=$_POST["team"];
echo("Name: ".$name."<br>");
echo("Surname: ".$surname."<br>");
echo("Team: ".$team."<br>");

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q3="Delete from coaches WHERE Name='$name' AND Surname='$surname' AND Team='$team'";
mysql_query($q3) or die ("Delete error");
echo("Delete successful!");
?>
</body>
</html>