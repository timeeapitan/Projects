<html>
<head>
<title>Delete teams</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php


$team=$_POST["name"];

echo("Team: ".$team."<br>");


$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q3="Delete from teams where Team_name='$team'";
$result=mysql_query($q3) or die ("Delete error");
echo("Delete successful!");
?>
</body>
</html>