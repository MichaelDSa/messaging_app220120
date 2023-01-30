
<?php // THESE ARE THE FUNCTIONS USED FOR: messaging_app220120

function form_contains_comma($str) {
    if(empty($str)){
        return true;    
    }
    
    $containsComma = strtok($str, ',') === $str ? false : true;

    return $containsComma;

}

function form_contains_unwanted_char($str){
    $unwanted = ['<', '>', "'", '"', '{', '}', '\\', '/'];

    $c = count($unwanted);
    for($i=0; $i<$c; $i++){
        if(strtok($str, $unwanted[$i]) !== $str){
            return true;
        }
    }

    return false;
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
            if(form_contains_unwanted_char($_POST['username'])){
                return $int == 0 ? false : 'Username can\'t use following characters: < > \' " } { \\ /';
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
            if(form_contains_unwanted_char($_POST['username'])){
                return $int == 0 ? false : 'Username can\'t use following characters: < > \' " } { \\ /';
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
                if( (strlen($_POST['password_1']) >= 4) && (strlen($_POST['password_1']) <= 20) ) {
                    return $int == 0 ? true : 'O.K.<br>';
                }else {                   
                    return $int == 0 ? false : 'Password must be 4 to 20 characters in length.';
                }                
            } else {
                    return $int == 0 ? false : 'Please enter a password.';
            }

            break;
    
        case 'password_2':
            if(!empty($_POST['password_2'])){
                if ($_POST['password_1'] == $_POST['password_2']) {
                    return  $int == 0 ? true : 'O.K.<br>';                
                } else if( (strlen($_POST['password_2']) < 4) OR (strlen($_POST['password_2']) > 20) ) {                    
                    return $int == 0 ? false : 'Password must be 4 to 20 characters in length.';
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
            if(form_contains_unwanted_char($_POST['login_username'])){
                return $int == 0 ? false : 'Username not found';
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
            if(strlen($_POST['login_password']) > 20){
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
                return $int == 0 ? false : 'No blank messages, please.';
            }
            if(!form_handler('recipients', 0)){
                return $int == 0 ? false : 'Message not sent.';
            }

            return $int == 0 ? true : 'Sending...';
            
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
                        $baduser = htmlentities($array[$i]);
                        $invalid_username_index = htmlspecialchars($baduser);
                        $invalid_usernames_array[$ii++] = $invalid_username_index;  
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
        if(form_contains_unwanted_char($array[$i])){
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

function messages_ajax_wrapper($fn, $url, $body, $id, $delay, $msg){
    print"
    <script>

    {$fn}();

    async function {$fn}(url = '{$url}', body = '{$body}', id = '{$id}', delay = '{$delay}', msg = '{$msg}'){

        // fetch response from the url. Send the recipient variables throught headers.
        let response = await fetch(url, {
            method: 'POST',
            headers: {'content-type': 'application/x-www-form-urlencoded'},
            body: `async=${body}`,
        });

        // check if the response was successful.
        if(response.ok && response.status == 200){

            // convert the response to text
            let text = await response.text();

            // replace the inner html of the element identified by the id:
            document.getElementById(id).innerHTML = text;

            // recursive call with delay:
            setTimeout(() => {$fn}(), delay);
            
        } else {
            document.getElementById(id).innerHTML = '{$msg}';
        }
    }
    </script>

    ";
}

function messages_menu_newmsg(){

    $conversations = messages_unique_conversations();
    $total_unread = 0;
    $c = count($conversations);
    for($i=0; $i<$c; $i++){
        $total_unread += messages_conversation_unread($conversations[$i]);
    }

    $message = $total_unread > 0 ? "NEW: " . $total_unread : "";

    return $message;

}

// This function will take the variable '$sticky_recipients' from messages.php
// conversations with those specific participants will be deleted from the user's table. 
function messages_delete_conversation($participants){

    if(empty($participants) || strlen($participants) < 5){
        return false;
    }

    include('../mysqli_connect_second.php');

    $tablename = mysqli_real_escape_string($dbc_second, $_SESSION['session_username']);
    $part_array = form_separate_recipient_usernames($participants);
    $part_implode = implode(' ', $part_array);
    $participants = mysqli_real_escape_string($dbc_second, $part_implode);

    
    $query ="DELETE FROM {$tablename} WHERE participants='{$participants}'";

    mysqli_query($dbc_second, $query);

    //error report and redirect:
    if(mysqli_affected_rows($dbc_second) < 0){
        $date = date('g:ia, l F j, Y ');
        $msg = $date . ": 'function messages_delete_conversation({$participants})' was unsuccessful." . PHP_EOL . "Query: {$query}" . PHP_EOL . "mysqli_affected_rows() is less than 0. ERROR: " . mysqli_error() .PHP_EOL;
        file_put_contents("log_delete_conversation.txt", $msg, FILE_APPEND);
        print "see log <br>";
        mysqli_close($dbc_second);
        return false;
    } else {
        mysqli_close($dbc_second);
        return true;
    }

}

function messages_display_conversation($recipients){
    if(empty($recipients)){
        // print "<p>NULL parameter</P>";
        return;
    }

    include('../mysqli_connect_second.php');

    $username = $_SESSION['session_username'];
    $participants = str_append_trim_sort($recipients, $username);

    //now obtain data from mysql
    $username = mysqli_real_escape_string($dbc_second, $username);
    $participants = mysqli_real_escape_string($dbc_second, $participants);
    $query = "SELECT * FROM `$username` WHERE participants='$participants' ORDER BY date_entered ASC";
    $query_result = mysqli_query($dbc_second, $query);

    while($row = mysqli_fetch_array($query_result)){
        $conversation[] = array('participants' => $row['participants'], 'speaker' => $row['speaker'], 'message' => $row['message'], 'date_entered' => $row['date_entered']);
    }

    print '';
    $c = count($conversation);
    for($i=0; $i<$c; $i++){       
        $box_position = $username == $conversation[$i]['speaker'] ? '<div class="block level-right" style="margin: 1.1rem 0rem">' : '<div  class="block level-left" style="margin: 1.1rem 0rem">';
        $box_color = $username == $conversation[$i]['speaker'] ? 'has-background-info has-text-white-ter' : 'has-background-grey-lighter';
        $span_float = $username == $conversation[$i]['speaker'] ? "<span style='float:right; font-size: 0.9rem;'>" : "<span style='float:left; font-size: 0.9rem;'>";
        $speaker = htmlspecialchars($conversation[$i]['speaker']);
        $message = htmlspecialchars($conversation[$i]['message']);
        $message = wordwrap($message, 55, "<br>");
        $date = htmlspecialchars($conversation[$i]['date_entered']);           
        print $box_position . '
        <p class="box ' . $box_color . '" style="padding: 0.5rem 1rem 0.5rem 1rem;" >' . $span_float . $speaker . ':</span><br><span style="font-size: 1.1rem"> ' . $message . '</span> <br><span style="font-size: 0.7rem;">' . $date . '</span></p>
        </div>
        ';

    }
    print '</div> </div> </div> </div></div></div>';

    //set the "viewed" column to 1 in all messages that have been printed:    
    $query_viewed =  "UPDATE `$username` SET viewed=1 WHERE participants='$participants'";
    mysqli_query($dbc_second, $query_viewed);

    
    mysqli_close($dbc_second);
    
}

// returns a list of buttons which link to the corresponding conversation.
// each button is labeled with the recipients, and has a new message indicator.
function messages_conversation_links(){

    $unique_conversations = messages_unique_conversations();

    // each link will be a button.
    // these assignments make the conversation links, ultimately assigned to $lines.
    $p_form =  '<p><form action="messages.php" method="post">';
    $form_p = '</form></p>';
    $input = array();
    $lines = "";

    //each link will 
    //vars for new message indicators
    $value_new_messages = "";
    $conversation_color = "is-link";

    for($i=0; $i<count($unique_conversations); $i++){

        $num_new_messages = messages_conversation_unread($unique_conversations[$i]);
        
        if($num_new_messages > 0){
            $value_new_messages = "<span class='has-text-white' style='background-color: hsl(0, 100%, 77%); border-radius:10px; padding: 0px 10px; margin:3px 5px;'>new: {$num_new_messages}</span>";  
            $conversation_color = "is-success";  
        } else {
            $value_new_messages = "";
            $conversation_color = "is-link";
        }

        $input[$i] = '<input type="hidden" name="unique_conversation" value="' . $unique_conversations[$i] . '"><button id="JS_unique_conversation' . $i . '" type="submit" class="button ' . $conversation_color . ' is-light is-outlined is-small is-rounded" style="margin:2px; width:100%;" value="' . $unique_conversations[$i] . '">' . $unique_conversations[$i] . ' '  . $value_new_messages . '</button>';
        $lines .= $p_form . $input[$i] . $form_p;
    }

    return $lines; 

}


//functions for html templates 
//These used to be inner functions belonging to messages_other_buttons(), but
//they cannot be redeclared (which is what happens when the outer function is called more than once per page).
//So they cannot be inner functions.
function label($for = '', $html = ''){
    if($for == '' && $html == ''){
            return '</label>';
        }
        return "<label for='{$for}'>{$html}";
    }
function form($action = '', $method = ''){
        if($action == '' && $method == ''){
            return '</form>';
        }
        return "<form action='{$action}' method='{$method}'>";
    }
function input_hidden($name, $value){
        return "<input type='hidden' name='{$name}' value='{$value}'>";
    }
function a($href = '', $class = '', $style = ''){
        if($href == '' && $class == '' && $style == ''){
            return '</a>';
        } 
        $h = "href='{$href}'";
        $c = "class='{$class}'";
        $s = "style='{$style}'";
        return "<a {$h}{$c}{$s}>";        
    }
function button($class ='', $style = '', $value = '', $html = ''){
        if($class == '' && $style == '' && $value == '' && $html == ''){
            return '</button>';
        }        
        return "<button class='{$class}' style='{$style}' value='{$value}'>{$html}";        
    }
    
// returns list of buttons which link to admin pages such as logout.php, 
function messages_other_buttons($selection = '', $sticky_recipients = ''){
        if($selection == ''){
            return;
        }

    // variables for class and style html attribute values
    $class_red_buttons = 'button is-danger is-light is-outlined is-small is-rounded';
    $class_yellow_buttons = 'button is-warning is-light is-outlined is-small is-rounded';
    $class_blue_buttons = 'button is-link is-light is-outlined is-small is-rounded';
    $class_blue_buttons_dark = 'button is-link is-large';
    $style_menu_buttons = 'margin:2px; width:100%;';
    $style_settings_buttons = 'margin:2px; width:50%;';
    
    //other variables:
    include('../mysqli_connect_second.php');
    $user = mysqli_real_escape_string($dbc_second, $_SESSION['session_username']);
    $itslog = session_user_logged_in(1) ? 'logout' : 'login';
    $sticky_recipients = isset($sticky_recipients) ? $sticky_recipients : "";
    mysqli_close($dbc_second);

    //BUTTONS:

    //logout button:
    $logout_button = a("{$itslog}.php", $class_red_buttons, $style_menu_buttons) . "{$itslog}" . a();
    $logout_end_session = form("logout.php", "post") . input_hidden("log_out", "yes") . label("logout", "<span class='has-text-danger'>Click to log out:</span>") . button($class_red_buttons, $style_menu_buttons, "yes", "Log out Now." ) . button() . label() . form();

    //register new user button
    $register_button = a("register_user.php") . button($class_blue_buttons, $style_menu_buttons, "register", "Register new user...") . button() . a();
    $register_button_big = a("register_user.php", $class_blue_buttons_dark, $style_menu_buttons) . "Register New User" . a();

    //'delete this conversation' button
    $delete_conversation_button = form("messages.php", "post") . input_hidden("delete", $sticky_recipients) . button($class_red_buttons, $style_menu_buttons, $sticky_recipients, "delete this conversation...") . button() . form();
    
    //'more settings...' button
    $more_settings_button = a("more_settings.php") . button($class_yellow_buttons, $style_menu_buttons, "more_settings.php", "more settings...") . button() . a();

    //'change password...' button:
    $change_password_button = form("more_settings.php", "post") . input_hidden("change_password", $user) . button($class_red_buttons, $style_menu_buttons, $user, "change password...") . button() . form();

    //'back to messaging...'
    $messaging_button = a("messages.php") . button($class_blue_buttons, $style_menu_buttons, "back", "<- back to messaging...") . button() . a();

    //'Send Messages Now'
    $send_messages_button = a("messages.php", $class_blue_buttons_dark, $style_menu_buttons) . "Send Messages Now" . a();

    //'About'
    $about_button = a("about.php", $class_red_buttons, $style_menu_buttons) . "About messaging_app220120" . a();


    //BUTTON COLLECTIONS:
    // menu buttons:
    $menu_buttons = $about_button . $logout_button . $delete_conversation_button . $more_settings_button;

    // buttons for more_settings.php
    $settings_buttons = $messaging_button . $change_password_button . $logout_button . $about_button;

    // buttons for logout page:
    $logout_page_buttons = $logout_end_session . "<p class='has-text-info is-size-5' style='padding:30px 0px 15px 0px;'>Or send more messages/explore settings...</p>" . $more_settings_button . $messaging_button;

    // buttons shown after logging out:
    $has_logged_out = $logout_button . $register_button;

    // buttons shown after logging in:
    $has_logged_in = '<div style="margin-top: 1.5rem;"></div>' . $send_messages_button . '<div style="min-height:55vh;"></div>' . $logout_button;

    switch ($selection) {

        //individual buttons:
        case 'about_button':
            return $about_button;

        case 'back_to_messaging':
            return $messaging_button;

            case 'log_in_or_out':
            return $logout_button;

        case 'logout_now':
            return $logout_end_session;

        case 'more_settings':
            return $more_settings_button;
            
        case 'register_button':
            return $register_button_big;


        
        // button collections:            
        case 'menu_buttons':
            return $menu_buttons;

        case 'settings_buttons':
            return $settings_buttons;

        case 'more_settings':
            return $more_settings_button;

        case 'logout':
            return $logout_page_buttons;

        case 'logged_out':
            return $has_logged_out;

        case 'logged_in':
            return $has_logged_in;
    }
}

//returns number of unread messages of a particular conversation.
function messages_conversation_unread($participants){

    //Does $participants match any messages_unique_conversations() indices?
    $unique_conversations = messages_unique_conversations();
    $c = count($unique_conversations);
    $participants_found = false;
    for($i=0; $i<$c; $i++){
        if($unique_conversations[$i] === $participants){
         $participants_found = true;
         break;
        }
    }
    if(!$participants_found){
        return;
    }

    //Now check if $participants have any viewed=0 in DB:
    include('../mysqli_connect_second.php');

    $table_username = $_SESSION['session_username'];
    $query = "SELECT viewed from `$table_username` WHERE participants='$participants'";
    $query_result = mysqli_query($dbc_second, $query);
    while($row = mysqli_fetch_array($query_result)){
        $viewed[] = $row['viewed'];
    }

    mysqli_close($dbc_second);

    $new_message = 0;
    
    $c = count($viewed);
    for($i=0; $i<$c; $i++){
        !$viewed[$i] ? $new_message++ : $new_message;
    }

    return $new_message;

}

function messages_send($speaker, $recipients, $message){
    include('../mysqli_connect_second.php');
    //preparing participants data
    $participants = str_append_trim_sort($recipients, $speaker);
    $part = form_separate_recipient_usernames($participants);
    $participants = implode(' ', $part);
    $speaker_array = form_separate_recipient_usernames($speaker);
    $speaker = implode(' ', $speaker_array);
    $array_recipients = form_separate_recipient_usernames($participants);

    //escaped data for columns: username|participants|speaker|message|viewed|date_entered
    $participants = mysqli_real_escape_string($dbc_second, $participants);
    $speaker = mysqli_real_escape_string($dbc_second, $speaker);
    $message = mysqli_real_escape_string($dbc_second, $message);

    //iterate through recipients adding data to each user's table.
    for($i=0; $i<count($array_recipients); $i++){
        $username = mysqli_real_escape_string($dbc_second, $array_recipients[$i]);
        
        $query = "INSERT INTO `$username` (username, participants, speaker, message, viewed, date_entered) VALUES ('$username', '$participants', '$speaker', '$message', 0, NOW())";
        mysqli_query($dbc_second, $query);

    }

    mysqli_close($dbc_second);

}

//returns an array of the unique participant members of each separate conversation.
function messages_unique_conversations(){
    include('../mysqli_connect_second.php');

    $table_username = $_SESSION['session_username'];
    $query = "SELECT DISTINCT participants FROM `$table_username`";

    $query_result = mysqli_query($dbc_second, $query);  
    
    while($row = mysqli_fetch_array($query_result)){
        $unique_conversations[] = $row['participants'];            
    }

    mysqli_close($dbc_second);

    if(!isset($unique_conversations)){
        return;
    }

    return $unique_conversations;

}

//Checks if user is logged in. 
//if the parameter, $boolean_false is set to 1, a boolean value will be returned.
//if default parameter is used, it will either return true, or 
//a message will be sent directing the user to the log-in page.
function session_user_logged_in($boolean_false = 0){

    $ternary_session = ( !isset($_SESSION['session_username']) ? false : isset($_SESSION['time_logged_in']) ) ? true : false;

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
        print '
        <div class="container" style="min-height: 100vh;">
            <div class="box" style="margin: 0 auto; min-height: 100vh; max-width: 600px;">
                <div class="control" style="margin: 0 auto; max-width: 600px;">
                    <div id="msgbox" class="box" style="">
                    <p class="has-text-info" style="font-size: 2.3rem;">Session expired. Please log in.</p>
                    ' . messages_other_buttons("log_in_or_out") . ' 
                    </div>
                </div>
            </div>
        </div>  
        <footer id="footer" class="box has-text-centered" style="margin:auto; max-width:600px; padding: 2px 20px; font-size: 0.75rem;">
        <p>
         <span>messaging_app220120 by Michael D\'Sa</span>
            <style>
                @media(max-width: 440px){
                    #msgbox, #footer{
                        padding: 5px;
                    }
                }
            </style>
        </p>
        
    </footer>
    </body>
    </html>
    ';
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
    include('../mysqli_connect_second.php');
    $user_has_table = false;
    $tablename = mysqli_real_escape_string($dbc_second, $str);
    $query = "SELECT 1 from `$tablename` LIMIT 1";
    
    if(mysqli_query($dbc_second, $query)){
        $user_has_table = true;
    }

    mysqli_close($dbc_second);

    return $user_has_table;

}
//PUT IN INCLUDE FILE
// 2) check if user's name is entered in authentication table.
function user_in_authentication($str) {

    include('../mysqli_connect_second.php');
    $user_in_authentication_table = false;

    $username = mysqli_real_escape_string($dbc_second, $str);    
    $query = "SELECT `username` FROM `authentication` WHERE username='$username'";
    
    // this searches for the user name
    if($r = mysqli_query($dbc_second, $query)){
        $row = mysqli_fetch_array($r);        
    }

    // if the username exists, it will be found here:
    if (!empty($row['username'])){             
        $user_in_authentication_table = true;
    }
    
    mysqli_close($dbc_second);

    return $user_in_authentication_table;

}

function user_password_matches($username, $password) {
    include('../mysqli_connect_second.php');
    $username_clean = mysqli_real_escape_string($dbc_second, $username);
    $password_clean = mysqli_real_escape_string($dbc_second, $password);
    $matches = false;

    $query = "SELECT `password` FROM `authentication` WHERE `username`='$username_clean'";

    if($r = mysqli_query($dbc_second, $query)){
        $row = mysqli_fetch_array($r);
    }

    if(isset($row['password'])){
        if($row['password'] == $password_clean){
            $matches = true;
        }
    }

    mysqli_close($dbc_second);

    return $matches;

}

function user_password_change($username, $new_password) {

    $success = FALSE;

    include('../mysqli_connect_second.php');
    $username_clean = mysqli_real_escape_string($dbc_second, $username);
    $password_clean = mysqli_real_escape_string($dbc_second, $new_password);

    $query = "UPDATE authentication SET password='$new_password' WHERE username='$username_clean'";

    if(mysqli_query($dbc_second, $query) !== FALSE){
        $success = TRUE;
    }

    mysqli_close($dbc_second);

    return $success;
}

?>