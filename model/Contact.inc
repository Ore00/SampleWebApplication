<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class Contact{
    public $ContactList;
    public $HTML_List;
    
    public function __construct($ContactList) {
    $this->ContactList = $ContactList;  
    }
    
  function set_HTMLList(){     
      //echo"<tr><td>'.$contact[clientID].'</td><td>First Name</td><td>Last Name</td><td>Email</td><td>Phone</td><td>Mobile</td></tr>";
    while($contact = mysqli_fetch_array($this->ContactList)){
        $this->HTML_List .= "<tr><td>" . $contact['clientID'] . 
                "</td><td>" . $contact['first_name'] .  "</td><td>" .
                $contact['last_name'] . "</td><td>" . $contact['email'] . 
                "</td><td>" . $contact['phone'] . 
                "</td><td>" . $contact['mobile'] . "</td></tr>" ;
        
    }
    return $this->HTML_List;
  }
  function get_HTMLList() {
      return $this->set_HTMLList();
  } 
  function get_cell($val){
      return "<td>" . $val . "</td>";
  } 
  
}
