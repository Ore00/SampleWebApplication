<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//error_reporting(E_ALL & ~E_NOTICE);
Try{    
if(session_id() == ""){
session_start();
session_cache_limiter();
}
if($_SERVER['REQUEST_METHOD'] == 'POST'){
if(file_exists("model/appConnect.inc")){    
require_once("model/appConnect.inc");}else{
    require_once("../model/appConnect.inc");
}
if(file_exists("model/siteUsers.inc")){
require_once("model/siteUsers.inc"); }else{
    require_once("../model/siteUsers.inc");
}   
$curUser = new siteUser($_POST['email'], $_POST['psswrd']);
$thisConnect = new appConnect();
$connect = $thisConnect->getConnection();
if(!$connect){
    throw new Exception("can't connect to database", 1);
}else{  
    $sql = $curUser->IsUserSQL();
    $result = $thisConnect->getData($sql);
    $count = $thisConnect->getDataCount($result);     
    $thisConnect->endConnection();
    $validUser = $curUser->authUser($count);
    echo $validUser;    
  
};    
    
}else{    
    include 'view/login.php';
    
}
}
catch(Exception $e){
  $errorMSG[] = $e;    
}