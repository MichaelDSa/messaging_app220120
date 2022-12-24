
<?php // THESE ARE THE FUNCTIONS USED FOR: login.php & registratin.php

function form_contains_comma($str) {
    if(empty($str)){
        return true;    
    }
    
    $containsComma = strtok($str, ',') === $str ? false : true;

    return $containsComma;

}


//PUT IN INCLUDE FILE
 /**
  * form_handler() is meant to validate $_POST indices ($_POST[$str]) that take form data.
  * if $str = 'validate_fields', it will validate all $_POST indices that take form data, returning either true/false or message.
  * the second arg can be either 0 or 1. if 1, a warning string will return for the form data in question.
  * if 0, function_handler() will return true/false depending on that form element's validity. the default is 0. 
  */ 
  function form_handler($str, $int = 0) {
    switch ($str) {
        //validate all elements of $_POST
        case 'validate_fields':
            $valid = false;
            foreach($_POST as $key => $value) {
                $valid = form_handler($key, 0);    
                if(!$valid) {
                    break;
                }
            }
            // print $valid;
            return $int == 0 ? $valid : ($valid == true ? 'form_handler() output: All form user input elements are valid.' : 'form_handler() output: Form user input has invalid elements.');
            break;
        case 'username':
            if(empty($_POST['username'])){
                return $int == 0 ? false : 'Please enter a username.';
            }  
            if(strlen($_POST['username']) < 5) {
                return $int == 0 ? false : 'Username must be 5 to 10 characters in length.';
            }            
            if(strlen($_POST['username']) > 10) {
                return $int == 0 ? false : 'Username must be 5 to 10 characters in length.';
            }      
            if(user_exists($_POST['username'])){
                return $int == 0 ? false : 'Sorry! That username is already taken.'; 
            }                        
            
            return $int == 0 ? true : 'O.K. username not taken!<br>';

            break;

        case 'username2':
            if(empty($_POST['username2'])){
                return $int == 0 ? false : 'Please verify your username. Both usernames must be identical.';
            }
            if(!($_POST['username'] == $_POST['username2'])){
                return $int == 0 ? false : 'Submitted usernames must be identical';
            }
            if(strlen($_POST['username2']) < 5) {
                return $int == 0 ? false : 'Username must be 5 to 10 characters in length. Usernames must be identical.';
            }            
            if(strlen($_POST['username2']) > 10) {
                return $int == 0 ? false : 'Username must be 5 to 10 characters in length. Usernames must be identical.';
            }    
            if(user_exists($_POST['username2'])){
                return $int == 0 ? false : 'Sorry! That username is already taken.'; 
            }                                

            return $int == 0 ? true : 'O.K. usernames match! <br>';
            
            break;

        case 'email':
            if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
                return $int == 0 ? true : 'O.K.<br>';
            } else {
                return $int == 0 ? false : 'Please enter a valid email address.';
            }
            break;

        case 'password_1':
            if(!empty($_POST['password_1'])){
                if( (strlen($_POST['password_1']) >= 4) && (strlen($_POST['password_1']) <= 10) ) {
                    return $int == 0 ? true : 'O.K.<br>';
                }else {                   
                    return $int == 0 ? false : 'Password must be 4 to 10 characters in length.';
                }                
            } else {
                    return $int == 0 ? false : 'Please enter a password.';
            }

            break;
    
        case 'password_2':
            if(!empty($_POST['password_2'])){
                if ($_POST['password_1'] == $_POST['password_2']) {
                    return  $int == 0 ? true : 'O.K.<br>';                
                } else if( (strlen($_POST['password_2']) < 4) OR (strlen($_POST['password_2']) > 10) ) {                    
                    return $int == 0 ? false : 'Password must be 4 to 10 characters in length.';
                } else {                    
                    return $int == 0 ? false : 'Passwords must be identical';
                }                
            } else {                 
                 return $int == 0 ? false : 'Please verify your password. Both passwords must be identical.';
            }
            break;


        case 'login_username':
            if(empty($_POST['login_username'])){
                return $int == 0 ? false : 'Username not found.';
            }
            if(strlen($_POST['login_username']) < 5){
                return $int == 0 ? false : 'Username not found.';
            }
            if(strlen($_POST['login_username']) > 10){
                return $int == 0 ? false : 'Username not found.';
            }
            if(user_exists($_POST['login_username'])){
                return $int == 0 ? true : 'Username O.K.! ';
            }
            return $int == 0 ? false : 'Username not found.';

        case 'login_password':
            if(empty($_POST['login_password'])){
                return $int == 0 ? false : 'Password not valid.';
            }
            if(strlen($_POST['login_password']) < 4){
                return $int == 0 ? false : 'Password not valid.';
            }
            if(strlen($_POST['login_password']) > 10){
                return $int == 0 ? false : 'Password not valid.';
            }
            if(user_password_matches($_POST['login_username'], $_POST['login_password'])){
                return $int == 0 ? true : '';
            }
            return $int == 0 ? false : 'Password not valid.';
            break;

        case 'recipients':
            if(!isset($_POST['recipients'])){
                return $int == 0 ? false : '';
            }
            if(empty($_POST['recipients'])){
                return $int == 0 ? false : 'Enter recipient username(s). Separate multiple uernames with a space. ';
            }
            //Display which users are not registered users
            $recipients_array = form_separate_recipient_usernames($_POST['recipients']);
            $invalid_recipients_array = form_invalid_usernames($recipients_array);
            $invalid_recipients_string = $invalid_recipients_array == false ? '' : implode(', ', $invalid_recipients_array);
            if(!empty($invalid_recipients_string)){
                return $int == 0 ? false : "Some users could not be found ($invalid_recipients_string). You can separate multiple usernames with a space.";
            }
            
            return $int == 0 ? true : '';
            break;
            
        case 'message':            
            if(!isset($_POST['message'])){
                return $int == 0 ? false : '';
            }
            if(empty($_POST['message'])){
                return $int == 0 ? false : ' No blank messages, please.';
            }
            if(!form_handler('recipients', 0)){
                return $int == 0 ? false : ' Cannot send.';
            }

            return $int == 0 ? true : ' Sending...';
            
            break;

        default:
            Print 'This is the default case form_handler().';
            break;
                
        
    }
}

//remove invalid usernames from an array of usernames and return the array.
//if no invalid usernames found, returns false.
function form_invalid_usernames($array){

    if(is_array($array) && is_countable($array)){
        
        if(empty($array)){
            return false;
        }
    
        $invalid_usernames_array;
        // $valid_usernames_array = form_valid_usernames($array) !== false ? form_valid_usernames($array) : array(0);
        $valid_usernames_array = form_valid_usernames($array);
        $valid_usernames_array_size = is_countable($valid_usernames_array) ? count($valid_usernames_array) : 0;
        $array_size = count($array);

        $ii = 0;
        if($valid_usernames_array !== false){
            for($i=0; $i<$array_size; $i++){
                
                if(empty($array[$i])){
                    unset($array[$i]);
                    continue;
                }
                
                if(is_array($valid_usernames_array) && is_countable($valid_usernames_array)){
                    if((array_search($array[$i], $valid_usernames_array, true)  === false)) {
                        // unset($array[$i]);
                        $invalid_usernames_array[$ii++] = $array[$i];            
                        // print 'here';
                    }
                }
            }
        } else {
            $invalid_usernames_array = $array;
        }

        if(empty($invalid_usernames_array)){
            return false;
        } else {        
            return $invalid_usernames_array;   
        }
    }else {
        return false;
    }

}
//return an array of usernames trimmed of separators (spaces & accidental commas)
//If none of the string can be turned into an array of usernames, false wil be returned.
function form_separate_recipient_usernames($str) {
    if(empty($str)){
        return false;
    }
    
    $str_array = explode(' ', $str);
    $count_str_array = count($str_array);
    
    for($val = 0; $val < $count_str_array; $val++) {
                
        //If element is empty, skip to next element in array.
        if(empty($str_array[$val])){
            unset($str_array[$val]);
            continue;
        }

        //Prerequisite for comma detection: trim spaces surrounding element. 
       $str_array[$val] = trim($str_array[$val]);
       

        //Detect commas surrounding element
        if(form_contains_comma($str_array[$val])){   
            
            //Trying to make a loop that performs fewer iterations
            //by checking both ends on each iteration, and stopping when the first letter of the username occurs. 
            //The goal is to eliminate the commas only on either side of the uername.

            //these stop the index from advancing when there are no more commas to be found on either end.
            $l_stop = false;
            $r_stop = false;
            // if there are no more commas to be found, $stop will become true.
            $stop = false;

            //indexes
            $a = 0;
            $z = strlen($str_array[$val])-1;          

            while(!$stop){
                //check the left side:
                if($str_array[$val][$a] == ',' && $l_stop == false){
                    $str_array[$val][$a] = ' ';
                    $a++;
                } else {
                    $l_stop = true;
                }
                //Check the right side:
                if($str_array[$val][$z] == ',' && $r_stop == false){
                    $str_array[$val][$z] = ' ';
                    $z--;
                } else {
                    $r_stop = true;
                }
                //Check if its time to stop
                if($l_stop && $r_stop) {                   
                    $stop = true;
                }
            }
        }
        
        //Any surrounding commas are now spaces, which can be trimmed.
        $str_array[$val] = trim($str_array[$val]);            
           
        //If an element has become empty, remove it. 
        if(empty($str_array[$val]) OR $str_array[$val] == ' ') {
            unset($str_array[$val]);
        }

    }

    //if the array has become empty return false.
    if(empty($str_array)){
        return false;
    }

    //make sure there are no duplicates.
    $str_array = array_unique($str_array);

    // make sure index numbers start from 0 and don't skip.
    $i = 0;
    foreach($str_array as $val) {
        $separate_recipient_usernames[$i++] = $val;
    }

    //sort the array so that group conversations are easier to identify by participants.
    sort($separate_recipient_usernames, SORT_NATURAL | SORT_FLAG_CASE);
    
    return $separate_recipient_usernames;
}

//find any valid usernames in the parameter array, and return a new array of valid usernames, or false if there are none.
function form_valid_usernames($array){

    if(empty($array) OR !is_array($array)){
        return false;
    }

    $valid_usernames_array;
    $ii = 0;
    for($i = 0; $i < count($array); $i++){
        if(empty($array[$i] or $array[$i] === '')) {
            continue;
        }
        if(form_contains_comma($array[$i])){
            continue;
        }
        if(strlen($array[$i]) < 5){
            continue;
        }
        if(strlen($array[$i]) > 10){
            continue;
        }
        if(!user_exists($array[$i])){
            continue;
        }

        $valid_usernames_array[$ii++] = $array[$i];
    }

    if(empty($valid_usernames_array )){
        return false;
    } else {
        return $valid_usernames_array;
    }

}


function messages_display_conversation($recipients){
    if(empty($recipients)){
        // print "<p>NULL parameter</P>";
        return;
    }

    include('../mysqli_connect_first.php');

    $username = $_SESSION['session_username'];
    $participants = str_append_trim_sort($recipients, $username);

    // print '<p>' . $username . '<br>' . $participants . '</p>';

    //now obtain data from mysql
    $username = mysqli_real_escape_string($dbc_first, $username);
    $participants = mysqli_real_escape_string($dbc_first, $participants);
    $query = "SELECT * FROM `$username` WHERE participants='$participants' ORDER BY date_entered DESC";
    $query_result = mysqli_query($dbc_first, $query);

    while($row = mysqli_fetch_array($query_result)){
        $conversation[] = array('participants' => $row['participants'], 'speaker' => $row['speaker'], 'message' => $row['message'], 'date_entered' => $row['date_entered']);
    }

    //class=("columns is-centered")("level-right")("level-left")
    print '';
    for($i=0; $i<count($conversation); $i++){
        $box_position = $username == $conversation[$i]['speaker'] ? '<div class="block level-right">' : '<div class="block level-left">';
        $box_color = $username == $conversation[$i]['speaker'] ? 'has-background-info has-text-white-ter' : 'has-background-grey-lighter';
        $speaker = htmlspecialchars($conversation[$i]['speaker']);
        $message = htmlspecialchars($conversation[$i]['message']);
        $message = wordwrap($message, 55, "<br>");
        $date = htmlspecialchars($conversation[$i]['date_entered']);           
        print $box_position . '
        <p class="box ' . $box_color . '" >' . $speaker . ':<br> ' . $message . ' <br>date:' . $date . '</p>
        </div>
        ';

    }
    print '</div> </div> </div> </div></div></div>';

    
    mysqli_close($dbc_first);
    
}


function messages_conversation_links(){
    include('../mysqli_connect_first.php');

    $table_username = $_SESSION['session_username'];

    $query = "SELECT DISTINCT participants FROM `$table_username`";

    $query_result = mysqli_query($dbc_first, $query);    

   
    
    while($row = mysqli_fetch_array($query_result)){
        $unique_conversations[] = $row['participants'];            
    }

    if(!isset($unique_conversations)){
        return;
    }

    for($i=0; $i<count($unique_conversations); $i++){
        print '<p><form action="messages.php" method="post">';
        print '<input type="hidden" name="unique_conversation" value="' . $unique_conversations[$i] . '"><input type="submit" value="' . $unique_conversations[$i] . '">';        
        print '</form><p>';
    }
    // print '</ul></p>';
    mysqli_close($dbc_first);

}

function messages_send($speaker, $recipients, $message){
    include('../mysqli_connect_first.php');
    //preparing participants data
    $participants = str_append_trim_sort($recipients, $speaker);
    $array_recipients = explode(' ', $participants);

    //escaped data for columns: username|participants|speaker|message|viewed|date_entered
    $participants = mysqli_real_escape_string($dbc_first, $participants);
    $speaker = mysqli_real_escape_string($dbc_first, $speaker);
    $message = mysqli_real_escape_string($dbc_first, $message);

    //iterate through recipients adding data to each user's table.
    for($i=0; $i<count($array_recipients); $i++){
        $username = mysqli_real_escape_string($dbc_first, $array_recipients[$i]);
        
        $query = "INSERT INTO `$username` (username, participants, speaker, message, viewed, date_entered) VALUES ('$username', '$participants', '$speaker', '$message', 0, NOW())";
        mysqli_query($dbc_first, $query);

    }

    mysqli_close($dbc_first);

}

//abandoned idea. another time.
function messages_send2($speaker, $recipients, $message){
    $array_recipients = form_separate_recipient_usernames($recipients);
    $array_recipients = form_valid_usernames($array_recipients);
    sort($array_recipients, SORT_NATURAL | SORT_FLAG_CASE);
    $count_array_recipients = count($array_recipients);

    include('../mysqli_connect_first.php');
    for($i=0; $i<$count_array_recipients + 1; $i++){
        $username = array_shift($array_recipients);
        if($username == $speaker){
            $username = array_shift($array_recipients);
        }
        $array_recipients[] = $username;//I want the list to be sorted, but have the username as the 2nd last index, and...
        $array_recipients[] = $speaker;//I want the speaker(person who sent the message) to be at the last index.
        $participants = implode(' ', $array_recipients);

        //all variables undergo escape string prevention:
        $username = mysqli_real_escape_string($dbc_first, $username);
        $participants = mysqli_real_escape_string($dbc_first, $participants);
        $speaker = mysqli_real_escape_string($dbc_first, $speaker);
        $message = mysqli_real_escape_string($dbc_first, $message);
        
        //make the query for the $speaker (the person sending the message)
        //within this loop, $speaker is ALWAYS at the end of the array, so break if successful.
        if($i == $count_array_recipients){
            $query = "INSERT INTO `$speaker` (username, participants, speaker, message, viewed, date_entered) VALUES ('$speaker', '$participants', '$speaker', '$message', 0, NOW())";
            mysqli_query($dbc_first, $query);
            break;
        }
        
        //a test to see which usernames are being queried.
        // print '<p>' . $i . ') ' . $username . ' | </p>';
        
        //now make the query for the each of the participants, including the current user ($username).
        //but don't make duplicate entries in anyone's table
        if($username !== $speaker){
            $query = "INSERT INTO `$username` (username, participants, speaker, message, viewed, date_entered) VALUES ('$username', '$participants', '$speaker', '$message', 0, NOW())";
            mysqli_query($dbc_first, $query);
        }
        
        //a simple test to see if the query worked.
        // if(mysqli_affected_rows($dbc_first) == 1){
        //     print '</p> affected rows = 1</p>';
        // } else {
        //     print '<p>See query</p>';
        // }        

        //now remove $speaker so that it can be tacked on to the end of the array on next iteration.
        array_pop($array_recipients);
    }
    mysqli_close($dbc_first);

    


}

//Checks if user is logged in. 
//if the parameter, $boolean_false is set to 1, a boolean value will be returned.
//if default parameter is used, it will either return true, or 
//a message will be sent directing the user to the log-in page.
function session_user_logged_in($boolean_false = 0){

    $ternary_session = ( !isset($_SESSION['session_username']) ? false : isset($_SESSION['time_logged_in']) ) ? true : false;

    // if(isset($_SESSION['time_logged_in']) && ($_SESSION['time_logged_in'] + (30 * 30)) > time() ) {
    //     session_messages_delete();
    //     return false;
    // }
    if($boolean_false == 1) {
        if($ternary_session){
            return true;
        } else {
            return false;
        }
    } else if($ternary_session){
        // print 'TRUE';
        return true;
    } else {
        // print 'FALSE';
        print '<h2>access is only for users who have logged in. Please log in!</h2>';
        print '<h2><a href="login.php">log in here</a></h2>';
        exit();
    }    

    return false;
    
}

function session_messages_delete(){
    $_SESSION = [];
    session_destroy();
    setcookie('PHPSESSID', FALSE, time()-3600, '/'); 
}

//for appending a username to a participants/recipients string, trimming and sorting each username.
function str_append_trim_sort($str_list, $str_append){
    $array = explode(' ', $str_list);
    $array[] = $str_append;
    $array = array_unique($array);

    $sorted_array;

    for($i=0; $i<count($array); $i++){
        if(!empty($array[$i])){
            $sorted_array[] = $array[$i];
        } else {
            continue;
        }
    }

    sort($sorted_array, SORT_NATURAL | SORT_FLAG_CASE);

    $return_string = implode(' ', $sorted_array);

    return $return_string;
}



 // returns true if user is in authentication table and has separate table for conversations.
 function user_exists($str) {
    // 1) a registered user must have their own table to store conversations.
    // 2) all registered user names are entered in the authentication table.  
    // if user is in the authentication table & has his own table, then the user exists.
    if(user_in_authentication($str) && user_has_table($str)) {
        return true;
    } else {
        return false;
    }

 }


// 1) check if user has table
function user_has_table($str) {
    include('../mysqli_connect_first.php');
    $user_has_table = false;
    $tablename = mysqli_real_escape_string($dbc_first, $str);
    $query = "SELECT 1 from `$tablename` LIMIT 1";
    
    if(mysqli_query($dbc_first, $query)){
        $user_has_table = true;
    }

    mysqli_close($dbc_first);

    return $user_has_table;

}
//PUT IN INCLUDE FILE
// 2) check if user's name is entered in authentication table.
function user_in_authentication($str) {

    include('../mysqli_connect_first.php');
    $user_in_authentication_table = false;

    $username = mysqli_real_escape_string($dbc_first, $str);    
    $query2 = "SELECT `username` FROM `authentication` WHERE username='$username'";
    
    // this searches for the user name
    if($r = mysqli_query($dbc_first, $query2)){
        $row = mysqli_fetch_array($r);        
    }

    // if the username exists, it will be found here:
    if (!empty($row['username'])){             
        $user_in_authentication_table = true;
    }
    
    mysqli_close($dbc_first);

    return $user_in_authentication_table;

}

function user_password_matches($username, $password) {
    include('../mysqli_connect_first.php');
    $username_clean = mysqli_real_escape_string($dbc_first, $username);
    $password_clean = mysqli_real_escape_string($dbc_first, $password);
    $matches = false;

    $query = "SELECT `password` FROM `authentication` WHERE `username`='$username_clean'";

    if($r = mysqli_query($dbc_first, $query)){
        $row = mysqli_fetch_array($r);
    }

    if(isset($row['password'])){
        if($row['password'] == $password_clean){
            $matches = true;
        }
    }

    mysqli_close($dbc_first);

    return $matches;
    

}



?>