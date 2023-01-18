<?php
define('TITLE', 'send/receive: messaging_app220120');
include('templates/header.html');
include('functions/functions.php');
include('functions/functions_messages.php');
session_start();
session_user_logged_in();




function form_send_message_display($msg_recipients = '', $msg_message = '', $sticky_recipients = '', $sticky_message = '') {
    
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
                <p class="has-text-info" style="padding-top: 1rem;">more menu stuff:</p>
                <div id="other">' . messages_other_buttons("menu_buttons", $sticky_recipients) . '</div>
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

                <!--  AJAX for updating conversation:
                      Other ajax calls have a php wrapper.
                      async_get_conversation() is included in this print statement to
                      maintain scrolling behaviours which depend on code in this print statement.
                      Scrolling behoaviour code must be within the scope of the async function in question. -->
                <script> 
                

                let url = "http://localhost/messaging_app220120/ajax_messages_display_conversation.php";
                let JS_sticky_recipients = document.getElementById("JS_sticky_recipients").getAttribute("value");       
                
                // async function   
                async_get_conversation(url);
                
                async function async_get_conversation(url) {
                    
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
                        setTimeout(() => async_get_conversation(url), 3000);
                        
                    } else {
                        document.getElementById("conversation").innerHTML = "Send a message! add recipients, or click on a conversation in the menu.";                        
                    }
                }
                </script>
                ';
                
                //PHP WRAPPERS FOR JS ASYNC FUNCTIONS:

                //scrolling behaviour is better when async function for displaying messages is not wrapped in a php function.
                

                // CONVERSATION LINKS WITH NEW MESSAGE INDICATORS:
                $fn_1 = 'async_conversation_links';
                $url_1 = "http://localhost/messaging_app220120/ajax_messages_conversation_links.php";
                $body_1 = 'participants';
                $id_1 = 'ajxmenu';
                $delay_1 = 3500;
                $msg_1 = 'Send a message! Start a conversation.';
                messages_ajax_wrapper($fn_1, $url_1, $body_1, $id_1, $delay_1, $msg_1);

                // MENU NEW MESSAGE INDICATOR:
                $fn_2 = 'async_menu_newmsg';
                $url_2 = "http://localhost/messaging_app220120/ajax_messages_menu_newmsg.php";
                $body_2 = 'menu_message';
                $id_2 = 'menu_message';
                $delay_2 = 3500;
                $msg_2 = '';
                messages_ajax_wrapper($fn_2, $url_2, $body_2, $id_2, $delay_2, $msg_2);

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

    } else if (isset($_POST['unique_conversation']) ){ //if user selects a past conversation button
        //display form with the past conversation recipients as sticky.
        $sticky_recipients = $_POST['unique_conversation'];
        form_send_message_display('', '', $sticky_recipients, '');

        //display the selected conversation
        //UPDATE: async JS function calls now request pages that display messages, and message notifications.
        // messages_display_conversation($_POST['unique_conversation']);

        //display all past conversations
        //UPDATE: async JS function calls now poll for new conversations, and display all links under menu bar.
        // print messages_conversation_menu();
    
    } else if(isset($_POST['delete']) ){ //is user selects the 'delete this conversation...' button
        // 'delete' must be set and 'delete' must be identical to current conversation recipients.
        include('../mysqli_connect_first.php');            
        $part = $_POST['delete'];
        $participants = mysqli_real_escape_string($dbc_first, $part);
        mysqli_close($dbc_first);

        //delete conversation from user table:
        if(!messages_delete_conversation($participants)){
            print "<p class='box has-text-danger' style='margin:auto; max-width: 600px;'>see 'other conversations' in menu.</p>";
        }

        //display form interface:
        form_send_message_display();
        
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