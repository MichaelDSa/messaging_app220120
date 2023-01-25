<?php // logout page: logout.php 
include('templates/header.html');
include('functions/functions.php');
session_start();
session_user_logged_in();

function logout_display($sticky_user){
    print '
    <div class="container" style="min-height: 100vh;">
        <div class="box" style="margin: 0 auto; min-height: 100vh; max-width: 600px;">
            <div class="control" style="margin: 0 auto; max-width: 600px;">
                <div id="msgbox" class="box" style="">
                <p class="has-text-info" style="font-size: 2.3rem; white-space: nowrap;">Logout '. $sticky_user .'</p>
                ' . messages_other_buttons("logout") . ' 
                </div>
            </div>
        </div>
    </div>  
    ';
}

function logged_out_display(){
    print '
    <div class="container" style="min-height: 100vh;">
        <div class="box" style="margin: 0 auto; min-height: 100vh; max-width: 600px;">
            <div class="control" style="margin: 0 auto; max-width: 600px;">
                <div id="msgbox" class="box" style="">
                <p class="has-text-info" style="font-size: 2.3rem; white-space: nowrap;">Please log in.</p>
                ' . messages_other_buttons("logged_out") . ' 
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
}


$user = $_SESSION['session_username'];

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if($_POST['log_out'] == 'yes'){
        //end session
        session_messages_delete();

        //display logged-out user options
        logged_out_display();

        exit();
    }
} else {
    logout_display($user);
    
}



include('templates/footer.html');

?>
