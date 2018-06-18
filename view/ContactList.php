<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
try{
include("header.php");
echo'<div class="container-fluid">  
<p class="text-left"><h2>Client List</h2> </p>    
<br/>
<div class="12u" id="page_status" >               
</div>
</div>';
echo'<div class="container" id="Contact_List"><div>'
. '<table id="DataList" class="table-striped table-bordered table-wrapper">';
echo"<thead><tr><th class='sorting'>ID</th><th>First Name</th><th>Last Name</th>"
. "<th>Email</th><th>Phone</th><th>Mobile</th></tr></thead><tbody>";

echo $GLOBALS['PrintRows'];
echo"<tfoot><tr><th>ID</th><th>First Name</th><th>Last Name</th>"
. "<th>Email</th><th>Phone</th><th>Mobile</th></tr></tfoot>";
echo'</tbody></table></div></div>';
include("footer.php");
}catch(Exception $e){
  $errorMSG[] = $e;    
}