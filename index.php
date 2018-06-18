<!DOCTYPE html>
<!--
Name: Linda McGraw's
Project Details:
Create a sample Web Application.  It does not have to be hosted anywhere, just zipped up PHP/HTML/SQL files is fine.
Goal:  Create a user login page that allows the end user to access a list of clients by id and name.
Requirements:  User cannot access client list until logged in.  Provide all source code and SQL exports / schema.
Technologies:  HTML5, jQuery, Bootstrap, PHP5, and MySQL

-->
<?php 
if(session_id() == ""){
session_start();
session_cache_limiter();
}
  
    if(!isset($_SESSION['userName'])){
        include_once("controller/doUser.php");         
    }else{
	include_once("controller/getContacts.php");
    }

?>
