<?php

$conn=mysqli_connect("localhost","root","","books");
if($conn==FALSE){
    die("connection failed" .mysqli_connect_error());
}
else{
    echo ".";
}
?>