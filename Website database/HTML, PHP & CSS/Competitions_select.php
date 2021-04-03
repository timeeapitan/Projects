<html>
<head>
<title>Select competitions</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php

$day=$_POST["day"];
$month=$_POST["month"];
$year=$_POST["year"];
$date=$year."-".$month."-".$day;

echo("Date: ".$day."/".$month."/".$year."<br>"); 

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q4="Select competitions.team1, competitions.team2, sala.Sala_nume, sala.Locatie from competitions join sala on competitions.Sala_nume=sala.Sala_nume where Data='$date'";
$result=mysql_query($q4) or die ("Select error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo"<table border='1'>
<tr><th>Team 1</th><th>Team 2</th><th>Hall</th><th>Location</th></tr>";
while ($row = mysql_fetch_array($result)) {
	echo "<tr><td style='text-align:center'>" . $row['team1']. "</td><td style='text-align:center'>".$row['team2']."</td><td style='text-align:center'>".$row['Sala_nume']."</td><td style='text-align:center'>".$row['Locatie']."</td></tr>";
}
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Select successful!");
?>
</body>
</html>