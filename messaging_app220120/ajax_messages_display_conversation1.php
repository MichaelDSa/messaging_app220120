<?php
include('functions/functions_login_registration.php');
session_start();
session_user_logged_in();

if(isset($_POST['sticky'])){
    $sticky_recipients = prepString($_POST['sticky']);
    
    if(validate_post($sticky_recipients)){
        messages_display_conversation($sticky_recipients);        
    }    
}

function validate_post($str){
    $recipients_array = form_separate_recipient_usernames($str);
    if(!form_invalid_usernames($recipients_array)){
        return true;
    } else {
        return false;
    }
}

function prepString($str){
    $str = htmlspecialchars($str);
    $str = htmlentities($str);
    $str = stripslashes($str);
    return $str;
}



?>