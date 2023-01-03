<?php
define('TITLE', 'send/receive: messaging_app220120');
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
        <div class="control" style="margin: 0 auto; max-width: 600px;">
            <div id="msgbox" class="box">
            <div id="conversation"></div>  
            <div id="interface_position" class="" style="border-radius: 5px;">          
            <span id="menu" class="button is-small is-link has-text-white" style="padding: 0px 12px; margin-top: 0rem; width:100%;border-radius: 5px;">menu
                <span id="menu_message" class="has-text-white" style="background-color: hsl(0, 100%, 77%); border-radius:10px; padding: 0px 10px; margin:3px 5px;">
                </span>
            </span>
            <div id="menu-div" class="box is-hidden" style="max-height:240px; width:auto;overflow: auto;" >
                <p class="has-text-info">other conversations:</p>
                <div id="ajxmenu"></div>
            </div>
 
                <div class=" box level" style="width:100%; padding:0px; margin: 10px 0px 1.5rem 0px;">
                <div class="level-item">
                        <form id="message_form" action="messages.php" method="post" style="width:100%;">
                            <div class="field has-addons">                                
                                <p class="control is-expanded" ><input id="JS_sticky_recipients" class="input is-info" type="text" name="recipients" placeholder="Add Recipients..." value="' . $sticky_recipients . '"></p>
                                <p class="control is-expanded" ><input class="input is-info" type="text" name="message" placeholder="Add Your Message..." value="' . $sticky_message . '" autofocus></p>
                                <p class="control"><button class="button has-background-link has-text-white" type="submit" value="Send">Send</button></p> 
                            </div>    
                        </form>
                    </div>
                </div>
                </div>
                <script>
                    let menu = document.querySelector("span#menu");    
                    menu.onclick = (event) => {
                        document.querySelector("div#menu-div").classList.toggle("is-hidden");
                        document.querySelector("form#message_form").scrollIntoView();
                        
                    }
                 </script>

                <!--  AJAX for updating conversation: -->
                <script> 
                

                let url = "http://localhost/messaging_app220120/ajax_messages_display_conversation.php";
                let JS_sticky_recipients = document.getElementById("JS_sticky_recipients").getAttribute("value");       

                // //scrolling vars and function. stops ajax from updating while scrolling.
                // let body = document.querySelector("body#body");
                // let is_scrolling = 0;

                // body.onscroll = (event) => {
                //     is_scrolling = 1;
                //     setTimeout(() => {
                //         is_scrolling = 0;
                //     }, 20000);
                // };
                
                // async function   
                get_conversation(url);
                
                async function get_conversation(url) {
                    
                    // fetch response from the url. Send the recipient variables through headers.
                    let response = await fetch(url, {
                        method: "POST", 
                        headers: {"content-type": "application/x-www-form-urlencoded"},
                        body: `sticky=${JS_sticky_recipients}`,
                    });                    
                    
                    // check if the response was successful.
                    if(response.ok && response.status == 200){
                        
                        // convert the response to text
                        let conversation = await response.text();
                        
                        // replace the inner html of div with id="conversation"
                        document.getElementById("conversation").innerHTML = conversation;

                        // position screen to interface only if user is NOT scrolling through the message.
                        if(!is_scrolling){
                            document.getElementById("message_form").scrollIntoView();
                        }                        
                        
                        // call get_conversation to make recursive loop at a delay of x seconds.
                        setTimeout(() => get_conversation(url), 3000);
                        
                    } else {
                        document.getElementById("conversation").innerHTML = "response not ok";                        
                    }
                }
                </script>
                ';
                // somehow this commented-out function doesnt work, yet virtually the same function works when it is included in the above print statement.
                // I am getting wierd networking errors that I don't understand. Some of the other async wrapper functions also have inscrutable errors.
                // Later I will try to change the address from localhost to 127.0.0.1 in another branch.
                // messages_ajax_display_conversation("http://localhost/messaging_app220120/ajax_messages_display_conversation1.php", $sticky_recipients, "conversation", 3000); 
                messages_ajax_conversation_links("http://localhost/messaging_app220120/ajax_messages_conversation_links.php", "participants", "ajxmenu", 3500);  
                messages_ajax_messages_menu_newmsg("http://localhost/messaging_app220120/ajax_messages_menu_newmsg.php", "menu_message", "menu_message", 3500);
                print '
                <script>
                let body = document.querySelector("body#body");
                let is_scrolling = 0;

                body.onscroll = (event) => {
                    is_scrolling = 1;
                    setTimeout(() => {
                        is_scrolling = 0;
                    }, 20000);
                };
                // position screen to interface only if user is NOT scrolling through the message.
                if(!is_scrolling){
                    document.getElementById("message_form").scrollIntoView();
                }  
                </script>
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
        // messages_display_conversation($_POST['recipients']);
        
        //display 'links' to all separate, unique conversations (one of the user's past conversations)
        // print messages_conversation_menu();

    } else if (isset($_POST['unique_conversation']) ){ //if user selects a past conversation button
        //display form with the past conversation recipients as sticky.
        $sticky_recipients = $_POST['unique_conversation'];
        form_send_message_display('', '', $sticky_recipients, '');

        //display the selected conversation
        // messages_display_conversation($_POST['unique_conversation']);

        //display all past conversations
        // print messages_conversation_menu();
    
        
    } else { //resubmit form with messages and stickies
        $recipients_array = form_separate_recipient_usernames($_POST['recipients']);
        $recipients_valid_array = form_valid_usernames($recipients_array);
        $recipients_valid_string = $recipients_valid_array == false ? '' : implode(', ', $recipients_valid_array);

        $msg_recipients = form_handler('recipients', 1);
        $msg_message = form_handler('message', 1);
        $sticky_recipients = isset($_POST['recipients']) ? $recipients_valid_string : '';
        $sticky_message = isset($_POST['message']) ? $_POST['message'] : '';

        form_send_message_display($msg_recipients, $msg_message, $sticky_recipients, $sticky_message);
        // print messages_conversation_menu();
    }
    
} else {
    form_send_message_display();
    // print messages_conversation_menu();
}


include('templates/footer.html');
?>