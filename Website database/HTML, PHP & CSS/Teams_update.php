<html>
<head>
<title>Update teams</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php


$president=$_POST["president"];
$team=$_POST["name"];
echo("Team: ".$team."<br>");
echo("President: ".$president."<br>");

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q2="Update teams set president='$president' where Team_name='$team'";
$result=mysql_query($q2) or die ("Update error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo"<table border='1'>
<tr><th>Team</th><th>President</th></tr>";
	echo "<tr><td style='text-align:center'>" . $team. "</td><td style='text-align:center'>".$president."</td></tr>";
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Update successful!");
?>
</body>
</html>