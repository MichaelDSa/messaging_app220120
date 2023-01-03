<?php
include('functions/functions_login_registration.php');
session_start();
session_user_logged_in();

$post_var = $_POST['async'];

print messages_menu_newmsg();




?>
