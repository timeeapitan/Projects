<html>
<head>
<title>Insert teams</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php


$team=$_POST["name"];
$day=$_POST["day"];
$month=$_POST["month"];
$year=$_POST["year"];
$president=$_POST["president"];
$date=$year."-".$month."-".$day;

echo("Team: ".$name."<br>");
echo("Founded: ".$day."/".$month."/".$year."<br>"); 
echo("President: ".$president."<br>");


$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q1="Insert into teams(Team_Name, data_fondarii, president) values('$team', '$date', '$president')";
$result=mysql_query($q1) or die ("Insert error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo"<table border='1'>
<tr><th>Team</th><th>Founded</th><th>President</th></tr>";
	echo "<tr><td style='text-align:center'>" . $team. "</td><td style='text-align:center'>".$date."</td><td style='text-align:center'>".$president."</td></tr>";
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Insert successful!");
?>
</body>
</html>