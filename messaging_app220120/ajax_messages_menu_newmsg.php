<?php
include('functions/functions.php');
session_start();
session_user_logged_in();

$post_var = $_POST['async'];

print messages_menu_newmsg();




?>
