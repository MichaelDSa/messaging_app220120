<?php
// This is the back-end for the 'ajax' code, -- the async function starting on messages.php, line 42. 
// This async function, get_conversation() updates the conversation in real time.
// get_conversation uses messages_display_conversation(), which was formerly relied upon in messages.php to display messages.
// messages_display_conversation() now only needs to be called once, from the 'AJAX' script
include('functions/functions_login_registration.php');
// include('../messages.php');
session_start();
session_user_logged_in();

$sticky_recipients = $_POST["sticky_recipients"];

messages_display_conversation($sticky_recipients);





?>