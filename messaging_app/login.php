

<?php
define('TITLE', 'Login: messaging_app220120');
include('templates/header.html');
include('functions/functions.php');


function form_login_display($msg_username = 'Please enter your username:', $msg_password = 'Please enter your Password:') {
    
    // NOTE:
    // form_handler() is for $_POST elements. See description in on functions page.

    $color_username = !isset($_POST['login_username']) ? 'is-info' : (form_handler('login_username', 0)  ? 'is-primary' : 'is-danger');

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
        <form class="box" style="margin: auto;max-width: 600px; min-height: 96vh;" action="login.php" method="post"> 
            <h2 class="title" style="text-align: center;">Login:</h2>            
                <div class="field">                        
                    <p class="' . $msg_color_u .  '  is-size-5" style="width: 600px">' . $msg_username . '</p>
                    <label class="label" for="login_username">Username: </label>                        
                    <div class="control">
                        <input class="input ' . $color_username . '" style="width: 600px" type="text" name="login_username" size="30"  placeholder="username" value="' . $sticky_username . '">
                    </div>
                </div>
                <div class="field">
                    <p class="' . $msg_color_p .  '  is-size-5" style="width: 600px">' . $msg_password . '</p>
                    <label class="label" for="login_password"> Password: </label>
                    <div class="control">
                        <input class="input ' . $color_password . '" style="width: 600px" type="password" name="login_password" size="30" placeholder="password" value="">
                    </div>
                </div>
                <div class="field">
                    <div class="control" style="text-align: center">
                        <label for="submit"></label>  <input class="button is-link" style="width: 141px" type="submit" value="log in">
                    </div>
                </div>   
                <p class="has-text-link has-text-centered is-size-4" style="margin-top:2.5rem;">Don\'t have an account?</p>           
                <div style="margin: 1rem 25%;">'. messages_other_buttons('register_button') .'</div>
        </form>
    </div>';
}

function login_success($user){

    print'
    <div class="container" style="min-height: 96vh;">
        <form class="box" style="margin: auto;max-width: 600px; min-height: 96vh;" action="login.php" method="post"> 
            <p class="has-text-info" style="margin-bottom: 3rem;font-size: 2.3rem; white-space: nowrap;">Start messaging</p>   
            <p class="has-text-link is-size-4">'. $user .' logged in </p>
            '. messages_other_buttons('logged_in') .'
        </form>
    </div>
    ';
}

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(form_handler('validate_fields', 0)){        
        
        session_start();
        $_SESSION['session_username'] = $_POST['login_username'];
        $_SESSION['time_logged_in'] = time();
        
        $user = htmlspecialchars($_POST['login_username']);
        
        login_success($user);

    } else {
        $msg_username = form_handler('login_username', 1);
        $msg_password = form_handler('login_password', 1);
        form_login_display($msg_username, $msg_password);
    }
} else {
    form_login_display();
}

include('templates/footer.html');
?>