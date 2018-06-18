<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
error_reporting('E_NONE');
Try{
if(!isset($_SESSION['userName'])){
    header("Location: ../index.php"); 
}
if(file_exists("model/appConnect.inc")){
require_once("model/appConnect.inc"); 
}else{    
require_once("../model/appConnect.inc");
}
if(file_exists("model/Contact.inc")){
require_once("model/Contact.inc"); 
}else{
require_once("../model/Contact.inc");
}
$thisConnect = new appConnect();
$connect = $thisConnect->getConnection();
if(!$connect){
    throw new Exception("can't connect to database", 1);
}else{  
    $sql = "select * from app_clients";
    $contacts = $thisConnect->getData($sql);
    $count = $thisConnect->getDataCount($contacts);        
    $ContactRows = new Contact($contacts);   
    $PrintRows = $ContactRows->get_HTMLList();
    include 'view/ContactList.php';
    $thisConnect->endConnection();     
};       
    
} catch (Exception $e) {
    $errorMSG[] = $e; 
}