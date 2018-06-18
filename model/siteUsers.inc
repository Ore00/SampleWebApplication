<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of siteUsers
 *
 * @author Linda
 */
class siteUser {
 var $firstName;
 var $llastName;
 var $userID;
 var $userName;
 var $userPsswrd;
 Private $tbl = "app_users";
function __construct($user,$psswrd) {
    $this->setUserName($user);
    $this->setUserPsswrd($psswrd);
} 
function getUserName(){
   return $this->setUserName(); 
}
function setUserName($user){
    $this->userName  = $user;
}
function getUserPsswrd(){
    return $this->setUserPsswrd();
}
function setUserPsswrd($psswrd){
    $this->userPsswrd = $psswrd;
}
function IsUserSQL(){
  /*Validate User SQL   */  
 $user = $this->userName;
 $pwd = $this->userPsswrd;  
    return "SELECT * from $this->tbl where UserName ='" .  $user . "' and UserPsswrd ='"  . md5($pwd) . "'";
}
function authUser($count){
   if($count === 1) {   
       $this->startUserSession();
       return TRUE;
   }else{
       return FALSE;
   }
}
function startUserSession(){
    if(session_id() == ""){
session_start();
session_cache_limiter();
}   
    $_SESSION['userName'] = $this->userName;
}

}
