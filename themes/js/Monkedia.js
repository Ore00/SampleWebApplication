/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){	
$('#userLogin').submit(function(e){     
         e.preventDefault();    
    var thisData = new FormData(this);  
   
     $("#loginSubmit").attr('disable',true);    
    $.ajax({
        url: 'controller/doUser.php',
        type: 'POST', 
          data: thisData, 
          contentType: false,
          processData: false          
    }).done(function(data){ 
       
        if(data == 1){ location.href='index.php'; }else{
          var err = "There's a problem with the user name and/or password. Try again";
            $('#form_status').fadeOut('slow', function(){              
                $("#form_status").addClass("alert alert-danger alert-dismissible");
                $('#form_status').fadeIn('slow').html(err);                 
           });         
          $("#OnlineSubmit").attr('disable',false); 
      } 
     }).fail(function(jqXHR, textStatus){           
         $("#form_status").addClass("alert alert-danger alert-dismissible");
           $("#loginSubmit").attr('disable',false);
                var err = textStatus; 
                $("#form_status").html("Form Results: " + err);                
        });   
    $('#form_status')[0].scrollIntoView(); 
});   
$('#DataList').DataTable(
        {
            
        initComplete: function () {
            this.api().columns().every( function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                    .appendTo( $(column.footer()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );
 
                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
 
                column.data().unique().sort().each( function ( d, j ) {
                    select.append( '<option value="'+d+'">'+d+'</option>' )
                } );
            } );
        },
        "deferRender": true
    } 
            
            ); //end DataTable
});

function doLogout(){
    location.href='controller/logout.php'; 
    
}
