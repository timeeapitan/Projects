<html>
<head>
<title>Update players</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body id="middle_frame">
<?php
$name=$_POST["name"];
$surname=$_POST["surname"];
$day=$_POST["day"];
$month=$_POST["month"];
$year=$_POST["year"];
$team=$_POST["team"];
$height=$_POST["height"];
$dob=$year."-".$month."-".$day;

echo("Name: ".$name."<br>");
echo("Surname: ".$surname."<br>");
echo("Date of birth: ".$dob."<br>"); 
echo("Team: ".$team."<br>");
echo("Height: ".$height."<br>");

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q2="Update players set Date_of_Birth='$dob',Team='$team',Height='$height' where Name='$name' and Surname='$surname'";
mysql_query($q2) or die ("Update error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo"<table border='1'>
<tr><th>Name</th><th>Surname</th><th>Date of birth</th><th>Team</th><th>Height</th></tr>";
	echo "<tr><td style='text-align:center'>" . $name. "</td><td style='text-align:center'>".$surname."</td><td style='text-align:center'>".$day."/".$month."/".$year."</td><td style='text-align:center'>".$team."</td><td style='text-align:center'>".$height."</td></tr>";
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Update successful!");
?>
</body>
</html>