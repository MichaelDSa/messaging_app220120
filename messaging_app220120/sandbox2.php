<?php
define('TITLE', 'send/receive: sandbox2');
include('templates/header.html');
include('functions/functions_login_registration.php');
session_start();
session_user_logged_in();


$uc = messages_unique_conversations();
$c = count($uc);
for($i=0; $i<$c; $i++){
    print '<p>' . $uc[$i] . '</p>';
}

// print messages_conversation_unread($uc[2]);
// $users = 
