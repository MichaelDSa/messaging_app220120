<?php
define('TITLE', 'send/recieve: chat_app220120');
include('templates/header.html');
include('functions/functions_login_registration.php');
include('functions/functions_messages.php');
session_start();
session_user_logged_in();



function form_send_message_display($msg_recipients = '', $msg_message = '', $sticky_recipients = '', $sticky_message = '') {
    
    
    // print '    
    // <div class="box is-mobile is-centered" style="width: 424px">
    // <form action="messages.php" method="post">' .
    // $msg_recipients . $msg_message . '<br>
    // <label for="recipients">To: </label><input class="input" type="text" name="recipients" size="20" value="' . $sticky_recipients . '">
    // <label for="message">Message: </label><input class="input" type="text" name="message" size="20" value="' . $sticky_message . '">
    // <label for="send"></label><input type="submit" value="SEND">    
    // </form>';

    print '
    <div class="container">
        <div class="control" style="margin: 0 auto; width: 600px">
            <div class="box">
                <div class="level">
                    <div class="level-item">
                        <form action="messages.php" method="post">
                            <div class="field has-addons">
                                <p class="control"><input class="input is-info" type="text" name="recipients" placeholder="Add Recipients..." value="' . $sticky_recipients . '"></p>
                                <p class="control"><input class="input is-info" type="text" name="message" placeholder="Add Your Message..." value="' . $sticky_message . '"></p>
                                <p class="control"><input class="button has-background-link has-text-white" type="submit" value="Send"></p> 
                            </div>
                        </form>
                    </div>
                </div>
    ';

}

if($_SERVER['REQUEST_METHOD'] == 'POST'){


    if(form_handler('recipients', 0) && form_handler('message', 0)){

        //UPDATE SENDER & RECIPIENTs TABLES
        // get current user & recipients data:
        $speaker = $_SESSION['session_username'];
        $recipients = $_POST['recipients'];        
        $msg = $_POST['message'];

        //send messages to database
        messages_send($speaker, $recipients, $msg);
        
        //display form with sticky recipients 
        $sticky_recipients = str_append_trim_sort($recipients, $speaker);
        form_send_message_display('','', $sticky_recipients, '');

        //display current conversation
        messages_display_conversation($_POST['recipients']);
        
        //display 'links' to all separate, unique conversations (one of the user's past conversations)
        messages_conversation_links();

    } else if (isset($_POST['unique_conversation']) ){ //if user selects a past conversation button
        //display form with the past conversation recipients as sticky.
        $sticky_recipients = $_POST['unique_conversation'];
        form_send_message_display('', '', $sticky_recipients, '');

        //display the selected conversation
        print messages_display_conversation($_POST['unique_conversation']);

        //display all past conversations
        messages_conversation_links();
    
        
    } else { //resubmit form with messages and stickies
        $recipients_array = form_separate_recipient_usernames($_POST['recipients']);
        $recipients_valid_array = form_valid_usernames($recipients_array);
        $recipients_valid_string = $recipients_valid_array == false ? '' : implode(', ', $recipients_valid_array);

        $msg_recipients = form_handler('recipients', 1);
        $msg_message = form_handler('message', 1);
        $sticky_recipients = isset($_POST['recipients']) ? $recipients_valid_string : '';
        $sticky_message = isset($_POST['message']) ? $_POST['message'] : '';

        form_send_message_display($msg_recipients, $msg_message, $sticky_recipients, $sticky_message);
        messages_conversation_links();
    }
    
} else {
    form_send_message_display();
    messages_conversation_links();
}


include('templates/footer.html');
?>