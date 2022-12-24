<?php

// parameters can be either 'register' or 'login'.
function form_submit2($str) {
    if($_SERVER['REQUEST_METHOD'] != 'POST') {
        $str == 'register' ? form_register_display() : ( $str == 'login' ? form_login_display() : note_2_self('error in form_submit2()') );
        return;
    }
    if($str == 'register') {
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
                print '<p>' . date('Y, m, d, G:i:s')  . ' ' . $username . ' registered as new user</p>';

                // create new table for user
                $new_table_query = "CREATE TABLE `$username` (id INT UNSIGNED NOT NULL AUTO_INCREMENT, username VARCHAR(255) NOT NULL, participants VARCHAR(255) NOT NULL, speaker VARCHAR(255) NOT NULL, message TEXT NOT NULL, viewed TINYINT(1) UNSIGNED NOT NULL, date_entered TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(id)) CHARACTER SET utf8";
                if(mysqli_query($dbc_first, $new_table_query) !== FALSE) {
                    print '<p>table created</p>';
                } else {
                    print '<p>Error: ' . mysqli_error($dbc_first) . '</p>';
                }
                

                // create welcome page/message with message that an email has been sent. login will be on that page. SESSION will start at that time. 
                mail($email, 'chat_app220120 verification', 'Thank you for registering!');
                print '<p>Welcome ' . $username . '! <br>An email has been sent to ' . $email . '</p>';

                $_POST = [];

                form_login_display()

                //close DB connection
                mysqli_close($dbc_first);

                // temporary output
                print '<p>FORM VERIFIED</p>';

            } else {
                print '<p>ERROR encournterd when trying to register: ' . $username . ' </p>';
                print '<p>QUERY: ' . $query . '</p>';
                print '<p>' . mysqli_error($dbc_first) . '</p>';

                //close  DB connection
                mysqli_close($dbc_first);
            }            

            // create welcome page/message with message that an email has been sent. login will be on that page. SESSION will start at that time. 
            
            //close DB connection
            
            // temporary output
            // print '<p>FORM VERIFIED</p>';

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
    }

    if($str == 'login') {
        if(form_handler('validate_fields', 0)) {
            //open chat app. to be done later.

            // temporary validation print:
            print 'LOGIN SUCCESSFUL!';
        } else {
            $msg_username = form_handler('login_username', 1);
            $msg_password = form_handler('login_password', 1);

            form_login_display($msg_username, $msg_password);
        }

    }

}

// return empty before going live.
function note_2_self($str) {
    /*return;*/
    print 'note_2_self(): ' . $str;
}

?>