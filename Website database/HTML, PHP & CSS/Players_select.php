<html>
<head>
<title>Select players</title>
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

$q4="Select players.Date_of_Birth, players.Height, players.Team, players.Coach_name, players.Coach_surname from players where Name='$name' and Surname='$surname'";
$result=mysql_query($q4) or die ("Select error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo"<table border='1'>
<tr><th>Date of Birth</th><th>Height</th><th>Team</th><th>Coach name</th><th>Coach surname</th></tr>";
while ($row = mysql_fetch_array($result)) {
	echo "<tr><td style='text-align:center'>" . $row['Date_of_Birth']. "</td><td style='text-align:center'>".$row['Height']."</td><td style='text-align:center'>".$row['Team']."</td><td style='text-align:center'>" . $row['Coach_name']. "</td><td style='text-align:center'>". $row['Coach_surname']. "</td></tr>";
}
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Select successful!");
?>
</body>
</html>