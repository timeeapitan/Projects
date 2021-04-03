<html>
<head>
<title>Insert coaches</title>
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
echo("Team: ".$team."<br>");
echo("Experience: ".$experience."<br>");
echo("Email: ".$email."<br>");

$ConnLink=mysql_connect("localhost","root","") or die ("Connection failed");
$database=mysql_select_db("handball_team") or die ("Database selection failed");

$q1="Insert into coaches(Name, Surname, Team, Experience, Email) values('$name', '$surname', '$team', '$experience', '$email')";
mysql_query($q1) or die ("Insert error");
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo"<table border='1'>
<tr><th>Name</th><th>Surname</th><th>Team</th><th>Experience</th><th>Email</th></tr>";
	echo "<tr><td style='text-align:center'>" . $name. "</td><td style='text-align:center'>".$surname."</td><td style='text-align:center'>".$team."</td><td style='text-align:center'>".$experience."</td><td style='text-align:center'>".$email."</td></tr>";
echo "</table>";
echo "<table><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>";
echo("Insert successful!");
?>
</body>
</html>