<?php // SANDBOX
// include('functions/functions_login_registration.php');
//returns boolean if the username contains a space.
//Set how many spaces are permitted before and after the username.
//Spaces within the username are not permitted.
ob_start();
function contains_space($str, $int1 = 0, $int2 = 0) {

    // don't proceed if string is empty:
    if(empty($str)){
        return true;
    }

    //first character that is not a space:
    $firstCharIndex;
    //last character that is not a space:
    $lastCharIndex;

    //find first char that is not a space:
    for($i = 0; $i <= strlen($str)-1; $i++) {
        if($str[$i] != ' '){
            $firstCharIndex = $i;   
            break;         
        }
    }
    //if $firstCharIndex hasn't been set, that means $str contains no characters.
    if(!isset($firstCharIndex)){
        return true;
    }
    //Set how many spaces are allowed before $str/username
    if($firstCharIndex > $int1) {
        return true;
    }

    //find the last char that is not a space:
    for($i = strlen($str)-1; $i >= $firstCharIndex; $i--){
        if($str[$i] != ' '){
            $lastCharIndex = $i;
            break;
        }
    }
    //set how many spaces are allowed after $str/username
    if(((strlen($str)-1) - $lastCharIndex) > $int2){
        return true;
    }

    //Now check for spaces between $firstCharIndex and $lastCharIndex.
    for($i = $firstCharIndex; $i <= $lastCharIndex; $i++){
        if($str[$i] == ' '){
            return true;
        }
    }

    return false;
}

//return boolean if $str contains comma anywhere.
function form_contains_comma($str) {
    if(empty($str)){
        return false;    
    }
    
    $containsComma = strtok($str, ',') === $str ? false : true;

    return $containsComma;

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
            //by checking both ends on each iteration. 
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
                //Check if it is time to stop
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
        // if(!user_exists($array[$i])){
        //     continue;
        // }

        $valid_usernames_array[$ii++] = $array[$i];
    }

    if(empty($valid_usernames_array )){
        return false;
    } else {
        return $valid_usernames_array;
    }

}

//remove invalid usernames from an array of usernames and return the array.
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
                        print 'here';
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

function array_test($array1, $array2 = array()){

    $array1_length = count($array1);
    $array2_length = count($array2);

    for($i=0; $i<$array1_length; $i++){
        if($i != 1) {
            unset($array1[$i]);
        }
    }
    while(next($array2)){
        print '<p>' . current($array2) . '</p>';
    }
    reset($array2);
    
    print_r($array1);


}


function explode_test($str) {
    $array = explode(' ', $str);
    $count_array = count($array);
    $empty_count = 0;
    for($i=0; $i<$count_array; $i++){
        if(/*empty($array[$i]) OR*/ $array[$i] == ''){
            unset($array[$i]);
            $empty_count++;
            continue;
        }
    }
    print "<p>Number of empty elements: $empty_count</p>";
    $i = 0;
    print "<p>element(" . key($array) ."): '" . reset($array) . "' |is element empty?" . empty(current($array)) . "</p>";  
    $new_array[$i] = current($array);      
    while(next($array)){
        print "<p>element(" . key($array) . ") '" . current($array) . "' |is element empty? " . empty(current($array)) . "</p>";        
        $new_array[++$i] = current($array);

    }
    print '<br> New Array: ';
    for($i=0; $i<count($new_array); $i++){
        print '<p>index ' . $i . ': ' . $new_array[$i] . '</p>' ;
    }
    reset($array);
    // for($i=0; $i<$count_array; $i++){
    // }
    // print "<p>number of spaces: $space_count</p>";
}

function messages_send_participants_helper($array){
    $speaker = array_pop($array);
    if(empty($array)){
        $participants = $speaker;
        return $participants;
    }
    $username = array_pop($array);
    if(empty($array)){
        $array[] = $speaker;
        $participants = implode(' ', $array);
        return $participants;
    }
    sort($array, SORT_NATURAL | SORT_FLAG_CASE);
    $array[] = $username;
    $array[] = $speaker;
    $participants = implode(' ', $array);
    return $participants;
    
}
function messages_send($sender, $recipients, $msg){

    $participants_array = form_separate_recipient_usernames($recipients);
    $participants_array = form_valid_usernames($participants_array);
    sort($participants_array, SORT_NATURAL | SORT_FLAG_CASE);
    // $participants[] = $sender;

    for($i=0; $i<count($participants_array); $i++){
        
        
        $username = array_shift($participants_array);
        // $username = $username == $sender ? array_shift($participants_array) : $username;
        if($username == $sender){
            $username = array_shift($participants_array);
        }
        
        $participants_array[] = $username;
        $participants_array[] = $sender;
        

        print '<p>';
        foreach($participants_array as $val){
            print $val . ' ';        
        }
        print '</p>';
        
        //use mysqli_real_escape_string for varialbes going into table.
        $last_index = count($participants_array)-1;
        $username = $participants_array[$last_index-1];
        $speaker = $participants_array[$last_index];
        $message = $msg;
        $participants = messages_send_participants_helper($participants_array);
        
        print '<p>TABLE: ' . $username . ' </p><p> Username: ' . $username . ' | Speaker: ' . $speaker . ' | Participants: ' . $participants . '</p>';
        print '<p>-----------------------------------------------------</p>';

        
        //last line before loop repeats
        array_pop($participants_array);

    }
}

function messages_conversation_links(){
    include('../mysqli_connect_first.php');

    $query = "SELECT DISTINCT participants FROM `test1`";

    $query_result = mysqli_query($dbc_first, $query);    
    
    while($row = mysqli_fetch_array($query_result)){
        $unique_conversations[] = $row['participants'];            
    }

    for($i=0; $i<count($unique_conversations); $i++){
        print '<p><form action="sandbox.php" method="post">';
        print '<input type="hidden" name="unique_conversation" value="' . $unique_conversations[$i] . '"><input type="submit" value="' . $unique_conversations[$i] . '">';        
        print '</form><p>';
    }
    // print '</ul></p>';
    mysqli_close($dbc_first);

}

function messages_display_conversation(){
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        include('../mysqli_connect_first.php');
        
        $str_post = $_POST['unique_conversation'] ?? ''; // null coalescing operator (??)     
        
        $str_post = mysqli_real_escape_string($dbc_first, $str_post);
        
        mysqli_close($dbc_first);

        return messages_display_conversation_helper($str_post);


    } else {

        return;

    }
}
function messages_display_conversation_helper($str) {
    include('../mysqli_connect_first.php');
    // $username = $_SESSION['session_username'];
    $query = "SELECT * FROM `test1` WHERE participants='$str' ORDER BY date_entered DESC";
    $query_result = mysqli_query($dbc_first, $query);
    while($row = mysqli_fetch_array($query_result)){
        $conversation[] = array('participants' => $row['participants'], 'speaker' => $row['speaker'], 'message' => $row['message'], 'date_entered' => $row['date_entered']);
    }
    // echo "<pre>";
    // print_r($conversation);
    // echo "</pre>";

    $count_conversation = count($conversation);
    $str_conversation = '<div>';
    for($i=0; $i<$count_conversation; $i++){       

        $speaker = $conversation[$i]['speaker'];
        $participants = $conversation[$i]['participants'];
        $message = $conversation[$i]['message'];
        $date = $conversation[$i]['date_entered'];

        $str_conversation .= '<p>' . $speaker . ':<br> ' . $participants . ':<br> ' . $message . ' <br>date:' . $date . '</p>';

    }
    $str_conversation .= '<div>';

    return $str_conversation;

    mysqli_close($dbc_first);

}



$str = ',,,,';
$str_recipients = ',,,,,,,,,user1,      us,er2   u,ser3';
$str_recipients2 = 'user1 user7 Michael user2 user6 user5, user1, user4, user3';
$str_recipients2_00 = 'user1 Michael user2 user3 user6 user5';
$str_recipients3 = 'user1,user2,user3,user4,user6,user7,';
$containsSpace = contains_space($str, 2,0) ? 'TRUE' : 'FALSE';
$containsComma = form_contains_comma($str) ? 'TRUE' : 'FALSE';

print '<h2>$str == "' . $str . '"</h2>';
print '<h2>$str contains spaces: ' . $containsSpace . '</h2>';
print '<h2>$str contains comma: ' . $containsComma . '</h2>';
$recipients1 = form_separate_recipient_usernames($str_recipients);
$recipients2 = form_separate_recipient_usernames($str_recipients2);
$recipients2_00 = form_separate_recipient_usernames($str_recipients2_00);
$recipients3 = form_separate_recipient_usernames($str_recipients3);

$str_recipients4 = implode(' ', $recipients2_00);

// messages_send('Michael', $str_recipients4, 'This is the message' );


messages_conversation_links();
print messages_display_conversation();

$number_array = array('zero', 'one', 'two', 'three', 'four', 'five', 'six');
$roman_numerals = array('i', 'ii', 'iii', 'iv', 'v');

// array_test($number_array, $roman_numerals);


$postRecipients = 'use r1, gwen, rob, joe, ian, hal, gob, gwen,,,,,, ,,,,,,,, mike';
$postRecipients2 = 'user1 user2 user3 user4 user5 user6 user7';
$postRecipients3 = ',,, ,, ,,,, ,,,, ,,,,,    ';
$postRecipients4 = '';

$recipientsArray = form_separate_recipient_usernames($postRecipients3);
$validUsernames = form_valid_usernames($recipientsArray);
$invalidUsernames = form_invalid_usernames($recipientsArray);

print '<br><h3>';

print '$_POST[\'recipients\']: ';
if($recipientsArray !== false) {
    foreach($recipientsArray as $value) {
        print $value . '|';
    }
} else {
    print 'FALSE';
}

print '<br><br>valid usernames:  ';
if($validUsernames !== false){
    foreach($validUsernames as $value){
        print $value . '|';
    }
} else {
    print 'FALSE';
}

print '<br><br>invalid usernames:';
if($invalidUsernames !== false){
    foreach($invalidUsernames as $value){
        print $value . '|';
    }
} else {
    print 'FALSE';
}

$invalidUsernamesIsEmpty =  empty($invalidUsernames) ? 'true' : 'false';

print '<br><br>$invalidUsernames is empty? ' .  $invalidUsernamesIsEmpty;

print '<h3>';


print '<br><br> // explode test:';

explode_test('   ,   this that');

ob_end_flush();
?>