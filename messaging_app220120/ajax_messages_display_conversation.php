<?php
// This is the back-end for the 'ajax' code, -- the async function starting on messages.php, line 42. 
// This async function, get_conversation() updates the conversation in real time.
// get_conversation uses messages_display_conversation(), which was formerly relied upon in messages.php to display messages.
// messages_display_conversation() now only needs to be called once, from the 'AJAX' script
include('functions/functions_login_registration.php');
session_start();
session_user_logged_in();

if(isset($_POST['sticky'])){

    //string cleaning:
    $s_recipients = prepString($_POST['sticky']);
    
    //remove commas:
    $s_recipients_array = form_separate_recipient_usernames($s_recipients);
    $sticky_recipients = implode(' ', $s_recipients_array);

    //validation:
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