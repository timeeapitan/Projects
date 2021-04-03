<html>
<head>
<title>Insert competitions</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php

$day=$_POST["day"];
$month=$_POST["month"];
$year=$_POST["year"];
$team1=$_POST["team1"];
$team2=$_POST["team2"];
$sala_nume=$_POST["sala_nume"];
$date=$year."-".$month."-".$day;

echo("Date: ".$day."/".$month."/".$year."<br>"); 
echo("Team 1: ".$team1."<br>");
echo("Team 2: ".$team2."<br>");
echo("Hall name: ".$sala_nume."<br>");

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q1="Insert into competitions(Data,team1,team2,Sala_nume) 
values('$date', '$team1','$team2', '$sala_nume')";
mysql_query($q1) or die ("Insert error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo"<table border='1'>
<tr><th>Date</th><th>Team 1</th><th>Team 2</th><th>Hall</th></tr>";
	echo "<tr><td style='text-align:center'>" . $day."/".$month."/".$year. "</td><td style='text-align:center'>".$team1."</td><td style='text-align:center'>".$team2."</td><td style='text-align:center'>".$sala_nume."</td></tr>";
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Insert successful!");
?>
</body>
</html>