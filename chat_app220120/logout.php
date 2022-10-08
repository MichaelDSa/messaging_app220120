<?php // logout page: logout.php 
include('templates/header.html');
include('functions/functions_login_registration.php');
session_start();
session_user_logged_in();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if($_POST['log_out'] == 'yes'){
        session_messages_delete();
        // header('Location: register_user.php');
        print '<p>' .
        '<a href="register_user.php">|Register new user|</a>' .
        '<a href="login.php">|Log In|</a>' .
        '<p>';
        exit();
    }
}


?>
<form action="logout.php" method="POST">
    <p>
        <label>Are you sure you want to log out?</label>
        <input type="hidden" name="log_out" value="yes">
        <input type="submit" value="log out">
    </p>
</form>




<?php
include('templates/footer.html');
?>
