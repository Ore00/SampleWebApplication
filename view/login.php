<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include("header.php");
echo'<div class="container">   
<div class="12u" id="form_status" >  
<a href="#" class=close data-dismiss=alert aria-label=close>&times;</a>
</div>
</div>';
echo'<div class="container" id="app_login">
<fieldset id="loginFieldset">
<legend>Login</legend> 
<form id="userLogin" method="post" autocomplete="off" enctype="multipart/form-data" class="form-horizontal"> 
<div class="form-group" > 
<label class="control-label col-sm-2" for="email">Email</label>
<div class="col-sm-10 input-group"> <div class="input-group-addon"><i class="fa fa-user fa-fw"></i> </div>
<input id="email" name="email" type="email" placeholder="Your Email" class="form-control" required="true">
</div>
</div>
<div class="form-group" > 
<label  class="control-label col-sm-2" for="psswrd">Password </label>
<div class="col-sm-10 input-group"><div class="input-group-addon"><i class="fa fa-key fa-fw"></i> </div>
<input id="psswrd" name="psswrd" type="password" placeholder="Enter Password" class="form-control" required="true">
</div>
</div>
<div class="form-group"><div class="col-sm-offset-2 col-sm-10">
<input type="submit" class="btn button" name="loginSubmit" id="loginSubmit" value="Submit">
</div></div>        
</form>
</fieldset>
</div>';

include("footer.php");
