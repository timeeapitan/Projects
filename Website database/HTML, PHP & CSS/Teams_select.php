<html>
<head>
<title>Select teams</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php


$name=$_POST["name"];


echo("Team: ".$name."<br>");

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q4="Select distinct players.Name, players.Surname, players.Coach_name, players.Coach_surname, teams.data_fondarii, teams.president
from teams join players on teams.Team_name=players.Team
join coaches on teams.Team_name=coaches.Team
where teams.Team_name='$name'";
$result=mysql_query($q4) or die ("Select error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo"<table border='1'>
<tr><th>Team</th><th>Player's name</th><th>Player's Surname</th><th>Coach's Name</th><th>Coach's Surname</th><th>Founded</th><th>President</th></tr>";
while ($row = mysql_fetch_array($result)) {
	echo "<tr><td style='text-align:center'>" . $name. "</td><td style='text-align:center'>" . $row['Name']. "</td><td style='text-align:center'>".$row['Surname']."</td><td style='text-align:center'>".$row['Coach_name']."</td><td style='text-align:center'>" . $row['Coach_surname']. "</td><td style='text-align:center'>". $row['data_fondarii']. "</td><td style='text-align:center'>". $row['president']. "</td></tr>";
}
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Select successful!");
?>
</body>
</html>