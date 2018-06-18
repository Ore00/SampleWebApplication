<!DOCTYPE html>
<!--
Name: Linda McGraw's
Project Details:
Create a sample Web Application.  It does not have to be hosted anywhere, just zipped up PHP/HTML/SQL files is fine.
Goal:  Create a user login page that allows the end user to access a list of clients by id and name.
Requirements:  User cannot access client list until logged in.  Provide all source code and SQL exports / schema.
Technologies:  HTML5, jQuery, Bootstrap, PHP5, and MySQL

-->
<html>
<head>
<meta charset="windows-1252">
<title>Monkedia</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<script src="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<script rel="preload" src="https://code.jquery.com/jquery-3.3.1.js"></script> 
<script rel="preload" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script> 
<script rel="preload" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script> 
<script rel="preload" src="themes/js/Monkedia.js"></script>
<link href="themes/appStyle.css" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#Navbar">
<span class="icon-bar"></span>  
<span class="icon-bar"></span>  
<span class="icon-bar"></span>  
</button>
<a class="navbar-brand" href="http://www.monkedia.com" target="blank"><img src="themes/images/Logo.png" alt="Monkedia" class="img-thumbnail app_logo"></a></a>
</div>
<div class="collapse navbar-collapse" id="Navbar">
<?php
if(isset($_SESSION['userName'])){
echo'<ul class="nav navbar-nav navbar-right">
<li><a href="#" onclick="doLogout()"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
</ul>';
}
?>        
        
</div>
</div>
</nav> 