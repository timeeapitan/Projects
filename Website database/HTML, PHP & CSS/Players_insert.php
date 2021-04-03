<html>
<head>
<title>Insert players</title>
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
$cname=$_POST["cname"];
$csurname=$_POST["csurname"];
$dob=$year."-".$month."-".$day;


echo("Name: ".$name."<br>");
echo("Surname: ".$surname."<br>");
echo("Date of birth: ".$day."/".$month."/".$year."<br>"); 
echo("Team: ".$team."<br>");
echo("Height: ".$height."<br>");
echo("Coach name: ".$cname."<br>");
echo("Coach surname: ".$csurname."<br>");



$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q1="Insert into players(Name, Surname, Date_of_Birth, Team, Height, Coach_name, Coach_surname) values('$name', '$surname','$dob', '$team', '$height', '$cname','$csurname')";
mysql_query($q1) or die ("Insert error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo"<table border='1'>
<tr><th>Name</th><th>Surname</th><th>Date of birth</th><th>Team</th><th>Height</th><th>Coach name</th><th>Coach surname</th></tr>";
	echo "<tr><td style='text-align:center'>" . $name. "</td><td style='text-align:center'>".$surname."</td><td style='text-align:center'>".$day."/".$month."/".$year."</td><td style='text-align:center'>".$team."</td><td style='text-align:center'>".$height."</td><td style='text-align:center'>".$cname."</td><td style='text-align:center'>".$csurname."</td></tr>";
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Insert successful!");
?>
</body>
</html>