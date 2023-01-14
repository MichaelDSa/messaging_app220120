<?php
define('TITLE', 'more settings: messaging_app220120');
include('templates/header.html');
include('functions/functions_login_registration.php');
session_start();
session_user_logged_in();

function more_settings_display(){

    print '
    <div class="container" style="min-height: 100vh;">
        <div class="box" style="margin: 0 auto; min-height: 100vh; max-width: 600px;">
            <div class="control" style="margin: 0 auto; max-width: 600px;">
                <div id="msgbox" class="box" style="">
                <p class="has-text-info" style="font-size: 2.3rem; white-space: nowrap;">more settings</p>
                ' . messages_other_buttons("settings_buttons") . '


    ';
}

function change_password_form($sticky_user, $msg = ''){
    print '

        <form class="" style="margin: 2rem auto;max-width: 600px" action="more_settings.php" method="post"> 
        <input type="hidden" name="login_username" value="'.$sticky_user.'">
            <h2 class="title" style="text-align: center;">Change password: ' . $sticky_user . '</h2>  
            <div>'. $msg .'</div>
                <div class="field">                        
                    <p class="has-text-info is-size-5" style="">Enter original password password.</p>
                    <label class="label" for="password">Enter Current Password: </label>                        
                    <div class="control">
                        <input class="input is-info" style="max-width: 600px" type="password" name="login_password" size="30"  placeholder="Enter Password... " value="">
                    </div>
                </div>
                <div class="field">
                    <p class="has-text-info is-size-5" style="">Now choose a new password.</p>
                    <label class="label" for="password_1">Enter New Password: </label>
                    <div class="control">
                        <input id="password_1" class="input is-info" style="max-width: 600px" type="password" name="password_1" size="30" placeholder="Enter New Password" value="">
                    </div>
                </div>
                <div class="field">
                    <p class="has-text-info is-size-5" style="max-width: 600px"></p>
                    <label class="label" for="password_2">Re-enter New Password, Please: </label>
                    <div class="control">
                        <input id="password_2" class="input is-info" style="max-width: 600px" type="password" name="password_2" size="30" placeholder="Verify New Password" value="">
                    </div>
                </div>
                <div class="field">
                    <div class="control" style="text-align: center">
                        <label id="label_change_password_button" class="is-hidden" for="submit"><p class="has-text-danger" style="width:100%; margin: 1.5rem auto;">Are you sure? Do you really want to change the password?</p></label>  
                        <div id="real_submit"></div>
                        <a id="fake_change_password_button"  class="button is-info" href="more_settings.php#yes_change_password_button"><p>Change password</p></a>
                        <a id="yes_change_password_button" class="button is-danger is-hidden" href="more_settings.php#submit"><p style="width: 100%">Yes. Change password.</p></a>
                        <a id="no_change_password_button"  class="button is-success is-hidden" href="more_settings.php"><p type="reset" style="width: 100%">No, I\'m not sure.</p></a>
                    </div>
                </div>              
        </form>
    
    <script>
    let sure = document.getElementById("label_change_password_button");
    let fake = document.getElementById("fake_change_password_button");
    let yes = document.getElementById("yes_change_password_button");
    let no = document.getElementById("no_change_password_button");

    fake.onclick = (event) => {
        sure.classList.remove("is-hidden");    
        yes.classList.toggle("is-hidden");
        no.classList.toggle("is-hidden");
        fake.classList.toggle("is-hidden");
    }
    yes.onclick = (event) => {
        document.getElementById("real_submit").innerHTML = `<input id="submit" class="button is-link" type="submit" value="OK. Change Password">`;
        
        yes.classList.toggle("is-hidden");
        no.classList.toggle("is-hidden");
    }
    </script>
    ';
}


function more_settings_display_end(){
    print'
            </div>
        </div>
    </div>
    ';
}
function more_settings_display_end_psswd(){
    print'
        </div>
    </div>
    ';
}

$user = $_SESSION['session_username'];

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(isset($_POST['change_password']) && ($_POST['change_password'] === $user)){
        more_settings_display();
        change_password_form($user);
        // more_settings_display_end();
        more_settings_display_end_psswd();
    
    } else if(isset($_POST['login_username']) && ($_POST['login_username'] === $user)){
        
        
        if(form_handler('validate_fields', 0)){

            $success = user_password_change($user, $_POST['password_2']);

            more_settings_display();
            
            if($success){
                print "<p class='box has-text-success'>User {$user}: password change successful.</p>";
            } else {
                print "<p class='box has-text-info'> FAILURE: {$user} password NOT changed.</p>";
            }

            // more_settings_display_end();
            more_settings_display_end_psswd();
            
        } else {

            $msg = '<p class="has-text-danger"style="font-size: 1.2rem;">User Error:</p><span class="has-text-danger">Double check current password.<br>Both new passwords must be identical.<br>Passwords must be 4 to 10 characters in length.</span>';

            more_settings_display();
            change_password_form($user, $msg);
            // more_settings_display_end();
            more_settings_display_end_psswd();
        }
       
        
    }
} else {
    more_settings_display();
}

include('templates/footer.html');
?>
