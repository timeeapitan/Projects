<html>
<head>
<title>Delete competitions</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php

$team1=$_POST["team1"];
$team2=$_POST["team2"];


echo("Team 1: ".$team1."<br>");
echo("Team 2: ".$team2."<br>");

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q3="Delete from competitions where team1='$team1' and team2='$team2'";
mysql_query($q3) or die ("Delete error");
echo("Delete successful!");
?>
</body>
</html>