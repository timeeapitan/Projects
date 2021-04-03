<?php
$user=$_POST["user_name"];
$password=$_POST["password"];
if($user=="Dan Buta" && $password=="coach1")
	header("Location: MAIN PAGE.html");
else if($user=="Matei Damian" && $password=="coach2")
	header("Location: MAIN PAGE.html");
else if($user=="Dan Siterli" && $password=="coach3")
	header("Location: MAIN PAGE.html");
else if($user=="Elena Mitrache" && $password=="coach4")
	header("Location: MAIN PAGE.html");
else{
	echo "Wrong login information<br><br>";
	echo '<input type=button value="Authentification page"
	onclick="history.back()"></input>';
}
?>