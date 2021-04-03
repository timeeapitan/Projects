<html>
<head>
<title>Select coaches</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php

$name=$_POST["name"];
$surname=$_POST["surname"];
$team=$_POST["team"];
$experience=$_POST["experience"];
$email=$_POST["email"];
echo("Name: ".$name."<br>");
echo("Surname: ".$surname."<br>");

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q4="Select distinct coaches.Team, players.Name, players.Surname, coaches.Email, coaches.Experience from coaches join players on coaches.Name=players.Coach_name where coaches.Name='$name' and coaches.Surname='$surname'";
$result=mysql_query($q4) or die ("Select error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo "<table border='1'>
<tr><th>Team</th><th>Name</th><th>Surname</th><th>Experience</th><th>Email</th></tr>";
while ($row = mysql_fetch_array($result)) {
	echo "<tr><td style='text-align:center'>" . $row['Team']. "</td><td style='text-align:center'>".$row['Name']."</td><td style='text-align:center'>".$row['Surname']."</td><td style='text-align:center'>" . $row['Experience']. "</td><td style='text-align:center'>". $row['Email']. "</td></tr>";
}
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Select successful!");
?>
</body>
</html>