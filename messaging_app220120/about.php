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
                <p class="has-text-info" style="font-size: 2.3rem; white-space: nowrap;">About messaging_app220120</p>
                <code style="font-size:12px"> 
                MIT License

                Copyright (c) 2023 Michael D\'Sa<br><br>

                Permission is hereby granted, free of charge, to any person obtaining a copy
                of this software and associated documentation files (the "Software"), to deal
                in the Software without restriction, including without limitation the rights
                to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
                copies of the Software, and to permit persons to whom the Software is
                furnished to do so, subject to the following conditions:<br><br>

                The above copyright notice and this permission notice shall be included in all
                copies or substantial portions of the Software.<br><br>

                THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
                IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
                FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
                AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
                LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
                OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
                SOFTWARE.<br><br>
                </code>
                ' . messages_other_buttons("back_to_messaging") . ' 
                </div>
            </div>
        </div>
    </div>  
    ';
}

include('templates/footer.html');
?>
