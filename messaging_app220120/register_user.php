<?php // messaging_app220120 register_user.php
/**
 * This app 
 * 1) registers a user.
 * 2) upon successful registration, user's credentials are added to the authentication table.
 * 3) then, a MySQL table is created for the user, which will store conversations.
 * 4) upon successful registration, an email is sent, and the login page opens.
 */

//include functions_login_register:
include('functions/functions.php');

//define constant
define('TITLE', 'Register: messaging_app220120');
// include header
include('templates/header.html');

//this is the version I used before implementing Bulma css framework. it is not in use.
function form_register_display2(
    $msg_username = 'Enter username.<br>',
    $msg_username2 = 'Verify username<br>',
    $msg_email = 'Enter email address.<br>',
    $msg_password_1 = 'Choose a password.<br>',
    $msg_password_2 = 'Verify password.<br>',
    $sticky_username = '',
    $sticky_username2 = '',
    $sticky_email = '',
    $sticky_password_1 = '',
    $sticky_password_2 = ''
    ){

print '
<form action="register_user.php" method="post">' .
    $msg_username . '
<p><label for="username">username: </label><input type="text" name="username" size="20" value="' . $sticky_username . '"></p><p>' .
    $msg_username2 . '</p>
<p><label for="username2">username: </label><input type="text" name="username2" size="20" value="' . $sticky_username2 . '"></p><p>' .
    $msg_email . '</p>
<p><label for="email">email address: </label><input type="email" name="email" size="20" value="' . $sticky_email . '"></p><p>' . 
    $msg_password_1 . '</p>
<p><label for="password_1">password: </label><input type="password" name="password_1" size="20" value="' . $sticky_password_1 . '"></p><p>' . 
    $msg_password_2 . '</p>
<p><label for="password_2">password: </label><input type="password" name="password_2" size="20" value="' . $sticky_password_2 . '"></p>
<p><label for="submit">Submit form: </label><input type="submit" value="Submit form"></p>
</form>';

}

function form_register_display(
    $msg_username = 'Enter username.<br>',
    $msg_username2 = 'Verify username<br>',
    $msg_email = 'Enter email address.<br>',
    $msg_password_1 = 'Choose a password.<br>',
    $msg_password_2 = 'Verify password.<br>',
    $sticky_username = '',
    $sticky_username2 = '',
    $sticky_email = '',
    $sticky_password_1 = '',
    $sticky_password_2 = ''
    ){

        //TASKS:
        //1) color for $msg_username: $color_msg_u1
        //2) color for $msg_username2: $color_msg_u2
        //3) color for $msg_email: $color_msg_e
        //4) color for $msg_password_1: $color_msg_p1
        //5) color for $msg_password_2: $color_msg_p2
        //6) color for field: $field_color_u1
        //7) color for field: $field_color_u2
        //8) color for field: $field_color_e
        //9) color for field: $field_color_p1
        //10) color for field: $field_color_p2

        
        //1), 2), 3), 4), 5)
        if($_SERVER['REQUEST_METHOD'] == 'POST'){
            $color_msg_u1 = form_handler('username', 0) ? 'has-text-success' : 'has-text-danger';
            $color_msg_u2 = form_handler('username2', 0) ? 'has-text-success' : 'has-text-danger';
            $color_msg_e = form_handler('email', 0) ? 'has-text-success' : 'has-text-danger';
            $color_msg_p1 = form_handler('password_1', 0) ? 'has-text-success' : 'has-text-danger';
            $color_msg_p2 = form_handler('password_2', 0) ? 'has-text-success' : 'has-text-danger';            
        } else {
            $color_msg_u1 = 'has-text-info';
            $color_msg_u2 = 'has-text-info';
            $color_msg_e = 'has-text-info';
            $color_msg_p1 = 'has-text-info';
            $color_msg_p2 = 'has-text-info';            
        }
        
        //6), 7), 8), 9), 10)
        $field_color_u1 = !isset($_POST['username']) ? 'is-info' : (form_handler('username', 0) ? 'is-success' : 'is-danger');
        $field_color_u2 = !isset($_POST['username2']) ? 'is-info' : (form_handler('username2', 0) ? 'is-success' : 'is-danger');
        $field_color_e = !isset($_POST['email']) ? 'is-info' : (form_handler('email', 0) ? 'is-success' : 'is-danger');
        $field_color_p1 = !isset($_POST['password_1']) ? 'is-info' : (form_handler('password_1', 0)  ? 'is-success' : 'is-danger');
        $field_color_p2 = !isset($_POST['password_2']) ? 'is-info' : (form_handler('password_2', 0)  ? 'is-success' : 'is-danger');

        print '
        <div class="container">
            <form class="box" style="margin:auto; max-width: 600px" action="register_user.php" method="post">
                <h2 class="title" style="margin-bottom: 0.5rem; text-align: center">Register New User</h2>
                <p class="has-text-centered is-size-4">or login:</p>
                <div style="width:50%; margin: 5px 25%">'. messages_other_buttons('log_in_or_out') .'</div>
                    <div class="field">
                        <p class="' . $color_msg_u1 . '">' . $msg_username . '</p>
                        <label class="label" for="username">Username: </label>
                        <div class="control">
                            <input class="input ' . $field_color_u1 . '" type="text" name="username" size="20" placeholder="Username" value="' . $sticky_username . '">
                        </div>  
                    </div>
                    <div class="field">
                        <p class="' . $color_msg_u2 . '">' . $msg_username2 . '</p>
                        <label class="label" for="username2">Verify Username: </label>
                        <div class="control">
                            <input class="input ' . $field_color_u2 . '" type="text" name="username2" size="20" placeholder="Verify Username" value="' . $sticky_username2 . '">
                        </div>
                    </div>
                    <div class="field">
                        <p class="' . $color_msg_e . '">' . $msg_email . '</p>
                        <label class="label" for="email">email address: </label>
                        <div class="control">
                            <input class="input ' . $field_color_e . '" type="email" name="email" size="20"  placeholder="email address"value="' . $sticky_email . '">
                        </div>
                    </div>
                    <div class="field">
                        <p class="' . $color_msg_p1 . '">' . $msg_password_1 . '</p>
                        <label class="label" for="password_1">Password: </label>
                        <div class="control">
                            <input class="input ' . $field_color_p1 . '" type="password" name="password_1" size="20"  placeholder="Password"value="' . $sticky_password_1 . '">
                        </div>
                    </div>
                    <div class="field">
                        <p class="' . $color_msg_p2 . '">' . $msg_password_2 . '</p>
                        <label class="label" for="password_2">Verify Password: </label>
                        <div class="control">
                            <input class="input ' . $field_color_p2 . '" type="password" name="password_2" size="20" placeholder="Verify Password" value="' . $sticky_password_2 . '">
                        </div>
                    </div>
                    <div class="field">
                        <label class="label" for="submit"></label>
                        <div class="control" style=" text-align: center">
                            <input class="button is-link" style="width: 141px" type="submit" value="Join the App!">                            
                        </div>
                    </div>
            </form>
        </div>';

    }

 function form_submit(){
     if($_SERVER['REQUEST_METHOD'] == 'POST') {
         
        if(form_handler('validate_fields', 0)){

            //connect to DB
            //connect 'first'@'localhost'
            include('../mysqli_connect_first.php');
            
            // add user to authentication table.
            $username = mysqli_real_escape_string($dbc_first, $_POST['username']);
            $email = mysqli_real_escape_string($dbc_first, filter_var($_POST['email'], FILTER_SANITIZE_EMAIL));
            $password = mysqli_real_escape_string($dbc_first, $_POST['password_2']);            
            $query = "INSERT INTO authentication (username, email, password, date) VALUES ('$username', '$email', '$password', NOW())";
            mysqli_query($dbc_first, $query);

          

            //test the query
            if(mysqli_affected_rows($dbc_first) == 1) {
               
                // create new table for user
                $new_table_query = "CREATE TABLE `$username` (id INT UNSIGNED NOT NULL AUTO_INCREMENT, username VARCHAR(255) NOT NULL, participants VARCHAR(255) NOT NULL, speaker VARCHAR(255) NOT NULL, message TEXT NOT NULL, viewed TINYINT(1) UNSIGNED NOT NULL, date_entered TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(id)) CHARACTER SET utf8";
                
                if(mysqli_query($dbc_first, $new_table_query) !== FALSE) {

                    mail($email, 'messaging_app220120 verification', 'Thank you for registering!');
    
                    print '
                    <div class="container" style="min-height: 100vh;">
                        <div class="box" style="margin: 0 auto; min-height: 100vh; max-width: 600px;">
                            <div class="control" style="margin: 0 auto; max-width: 600px;">
                                <div id="msgbox" class="box" style="">
                                <p class="has-text-info" style="font-size: 2.3rem;">Thank you for Registering!</p>
                                <p class="has-text-link" style="font-size: 1rem;">You\'ve successfully registered as <span style="color:black;"> '. $username .'</span></p>
                                <p class="has-text-link" style="font-size: 1rem;">An email has been sent to: <span style="color:black"> '. $email .'</span></p>
                                <p class="has-text-link" style="font-size: 1rem;">Please log in to send & receive messages!</p>
                                <p class="has-text-info" style="font-size: 2.3rem;">Please Log In:</p>
                                ' . messages_other_buttons("log_in_or_out") . ' 
                                </div>
                            </div>
                        </div>
                    </div>  
                    ';
                   
                } else {
                    print '<p>Error: ' . mysqli_error($dbc_first) . '</p>';
                }
                
                // create welcome page/message with message that an email has been sent. login will be on that page. SESSION will start at that time. 
                
                mysqli_close($dbc_first);

                
               

            } else {
                print '<p>ERROR encournterd when trying to register: ' . $username . ' </p>';
                print '<p>QUERY: ' . $query . '</p>';
                print '<p>' . mysqli_error($dbc_first) . '</p>';

                //close  DB connection
                mysqli_close($dbc_first);
            }            

        } else {
            //sticky form vars
            $sticky_username = $_POST['username'];
            $sticky_username2 = $_POST['username2'];
            $sticky_email = $_POST['email'];
            $sticky_password_1 = $_POST['password_1'];
            $sticky_password_2 = $_POST['password_2'];

            form_register_display(
                form_handler('username', 1), 
                form_handler('username2', 1), 
                form_handler('email', 1), 
                form_handler('password_1', 1), 
                form_handler('password_2', 1),
                $sticky_username,
                $sticky_username2,
                $sticky_email,
                $sticky_password_1,
                $sticky_password_2                
            );
        }
    } else {
        form_register_display();
    }

 }


//check if the form has been submitted.
//if it hasn't, empty form will be displayed.
//if sumission fails, a sticky form with user guidance messages will display.
 form_submit();

 ?>

 <!-- // include footer -->
<?php 
include('templates/footer.html'); 
?>

