<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of appConnect
 * Allows app to connect to the database & retrieve data
 * @author Linda
 */

if(file_exists("includes/db_config.inc")){
require_once("includes/db_config.inc"); 
}else{
    require_once("../includes/db_config.inc"); 
}
class appConnect {
   
var $dbName;
var $dbUser;
var $dbPwd;
var $server;
var $connection;

function __construct() {     
$this->getConnection();
}
function setConnection(){
 /*set the connection variables for the database */     
$this->dbName = $GLOBALS['dbname'];
$this->dbUser = $GLOBALS['dbuser'];
$this->dbPwd =  $GLOBALS['dbpwd'];
$this->server = $GLOBALS['host']; 
}
function getConnection(){
    $this->setConnection();
    $this->connection = mysqli_connect($this->server, $this->dbUser, $this->dbPwd, $this->dbName);
    return $this->connection;
}
function getData($SQL){
/*returns array of data*/    
 $result = mysqli_query($this->connection, $SQL);
 return $result;
}
function getDataCount($result){
   return mysqli_num_rows($result);
}
function endConnection(){
    mysqli_close($this->connection); 
}
 
}

