

<?php
define('TITLE', 'Login: messaging_app220120');
include('templates/header.html');
include('functions/functions_login_registration.php');


function form_login_display($msg_username = 'Please enter your username:', $msg_password = 'Please enter your Password:') {
    
    // if(!isset($_POST['login_username'])){
    //     $color_username = 'is-primary';
    // } else if(form_handler('login_username', 1) == 'Username not found.') {
    //     $color_username = 'is-danger';
    // } else if(form_handler('login_username', 0) == true){
    //     $color_username = 'is-primary';
    // }

    $color_username = !isset($_POST['login_username']) ? 'is-info' : (form_handler('login_username', 0)  ? 'is-primary' : 'is-danger');

    // if(!isset($_POST['login_password'])){
    //     $color_password = 'is-primary';
    // } else if(form_handler('login_password', 1) == 'Password not valid.') {
    //     $color_password = 'is-danger';
    // } else {
    //     $color_password = 'is-primary';
    // }

    $color_password = !isset($_POST['login_password']) ? 'is-info' : (form_handler('login_password', 0)  ? 'is-primary' : 'is-danger');

    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $msg_color_u = form_handler('login_username', 0) ? 'has-text-primary' : 'has-text-danger';
        $msg_color_p = form_handler('login_password', 0) ? 'has-text-primary' : 'has-text-danger';
        $sticky_username = form_handler('login_username', 0) ? htmlspecialchars($_POST['login_username']) : '';
    } else {
        $msg_color_u = 'has-text-info';
        $msg_color_p = 'has-text-info';
        $sticky_username = '';
    }

    print '
    <div class="container" style="">
        <form class="box" style="margin: auto;max-width: 424px" action="login.php" method="post"> 
            <h2 class="title" style="width: 376px; text-align: center;">Login:</h2>            
                <div class="field">                        
                    <p class="' . $msg_color_u .  '  is-size-5" style="width: 424px">' . $msg_username . '</p>
                    <label class="label" for="login_username">Username: </label>                        
                    <div class="control">
                        <input class="input ' . $color_username . '" style="width: 424px" type="text" name="login_username" size="30"  placeholder="username" value="' . $sticky_username . '">
                    </div>
                </div>
                <div class="field">
                    <p class="' . $msg_color_p .  '  is-size-5" style="width: 424px">' . $msg_password . '</p>
                    <label class="label" for="login_password"> Password: </label>
                    <div class="control">
                        <input class="input ' . $color_password . '" style="width: 424px" type="password" name="login_password" size="30" placeholder="password" value="">
                    </div>
                </div>
                <div class="field">
                    <div class="control" style="text-align: center">
                        <label for="submit"></label>  <input class="button is-link" style="width: 141px" type="submit" value="log in">
                    </div>
                </div>              
        </form>
    </div>';
}

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(form_handler('validate_fields', 0)){        
        print '<h3>' . htmlspecialchars($_POST['login_username']) . ' successfully logged in!</h3>';
        
        session_start();
        $_SESSION['session_username'] = $_POST['login_username'];
        $_SESSION['time_logged_in'] = time();

        print'<a href="messages.php" > send messages </a>';

    } else {
        $username = form_handler('login_username', 1);
        $password = form_handler('login_password', 1);
        form_login_display($username, $password);
    }
} else {
    form_login_display();
}

include('templates/footer.html');

?>