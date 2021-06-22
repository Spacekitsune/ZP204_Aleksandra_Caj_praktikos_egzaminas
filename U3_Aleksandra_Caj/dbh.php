<?php
$host="localhost";
$username="root";
$passwd="";
$dbname="u2_egzaminas";

$mysqli_connection= mysqli_connect($host, $username, $passwd, $dbname);
if(mysqli_connect_errno()){
    echo mysqli_connect_error();
} else {

}
