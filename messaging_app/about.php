<?php // logout page: logout.php 
include('templates/header.html');
include('functions/functions.php');
session_start();
session_user_logged_in();

about();

function about(){
    print '
    <div class="container" style="min-height: 100vh;">
        <div class="box" style="margin: 0 auto; min-height: 100vh; max-width: 600px;">
            <div class="control" style="margin: 0 auto; max-width: 600px;">
                <div id="msgbox" class="box" style="">
                    <p class="has-text-info" style="font-size: 2.3rem;">About messaging_app220120</p>
                </div>
            </div>
            <div class="box"> 
                 <p class="has-text-info is-size-5">messaging_app220120 uses:</p>
                    <li>PHP</li>
                    <li>MySQL</li> 
                    <li>HTML</li>
                    <li>CSS</li>
                    <li>JavaScript</li>
                    <li>Fetch API</li>
                    <li>Bulma CSS framework</li>      
                    <li>Git & GitHub</li>
                    <li>See GitHub <a href="https://github.com/MichaelDSa/messaging_app220120" target="_blank" target="_blank" rel="noopener noreferrer">readme</a> for more.</li>        
            </div>
            <div class="box">
                <p class="has-text-info is-size-5">Licensing info: </p>
                            
                    <li><a href="https://github.com/MichaelDSa/messaging_app220120" target="_blank" target="_blank" rel="noopener noreferrer">messaging_app220120</a></li>
                    <li><a href="https://github.com/MichaelDSa/messaging_app220120/tree/main/messaging_app220120/bulma" target="_blank" target="_blank" rel="noopener noreferrer">Bulma</a></li>
            </div>
            <div class="box">
                <p class="has-text-info is-size-5">Michael D\'Sa:</p>
                    <li><a href="https://github.com/MichaelDSa" target="_blank" target="_blank" rel="noopener noreferrer">GitHub</a></li>
            </div>
                ' . messages_other_buttons("back_to_messaging") .  messages_other_buttons("more_settings") .' 
        </div>
    </div>  
    ';
}

include('templates/footer.html');
?>
