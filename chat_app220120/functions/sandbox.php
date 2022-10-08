<?php // SANDBOX
include('functions/functions_login_registration.php');
//returns boolean if the username contains a space.
//Set how many spaces are permitted before and after the username.
//Spaces within the username are not permitted.

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
        return true;    
    }
    
    $containsComma = strtok($str, ',') === $str ? false : true;

    return $containsComma;

}

//return an array of usernames trimmed of separators (spaces & accidental commas)
function form_separate_recipient_usernames($str) {
    if(empty($str)){
        return false;
    }
    
    $str_array = explode(' ', $str);
    
    for($val = 0; $val <= count($str_array)-1; $val++) {
        $firstChar = 0;
        $lastChar = strlen($str_array[$val])-1;
        
        //If element is empty, skip to next element in array.
        if(empty($str_array[$val])){
            continue;
        }

        //Prerequisite for comma detection: trim spaces surrounding element. 
        if(($str_array[$val][$firstChar] == ' ') && ($str_array[$val][$lastChar] == ' ')){
            $str_array[$val] = trim($str_array[$val]);
        }

        //Detect commas surrounding element
        if(form_contains_comma($str_array[$val])){   
            
            //Checking the left side of element for commas
            for($i = 0; $i < strlen($str_array[$val])-1; $i++){
                if($str_array[$val][$i] == ','){
                    $str_array[$val][$i] = ' ';
                    continue;
                } else {
                    break;
                }
            }

            //Checking the right side of element for commas
            for($i = strlen($str_array[$val])-1; $i >= 0; $i--) {
                if($str_array[$val][$i] == ',') {
                    $str_array[$val][$i] = ' ';
                    continue;
                } else {
                    break;
                }
            }
        }
        
        //Any surrounding commas are now spaces, which can be trimmed.
        if(($str_array[$val][$firstChar] == ' ') OR ($str_array[$val][$lastChar] == ' ')){
            $str_array[$val] = trim($str_array[$val]);            
        }   
    }

    $str_array = array_unique($str_array);

    return $str_array;
}

//remove valid usernames from an array of usernames and return the array.
function form_valid_usernames($array){
    include('../mysqli_connect_first.php');
    $valid_usernames_array;
    
    for($i = 0; $i < count($array); $i++){
        if(empty($array[$i])) {
            continue;
        }
        if($array[i] == ' '){
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
        $valid_usernames_array[] = $array[$i];

    }
    
    mysqli_close($dbc_first);
    
    return $valid_usernames_array;

}

//remove invalid usernames from an array of usernames and return the array.
function form_invalid_usernames($array){

    $invalid_usernames_array;
    $valid_usernames_array = form_valid_usernames($array);
    $valid_usernames_array_size = count($valid_usernames_array);

    for($i=0; $i<count($array); $i++){
        
        if(array_search($array[$i], $valid_usernames_array, true) !== false) {
            unset($array[$i]);
        }

        // $array_value = $array[$i];
        // for($ii=0; $ii < $valid_usernames_array_size; $ii++){
        //     if($valid_usernames_array[$ii] == $array_value){
        //         unset($array[$i]);
        //     }
        // }

    }//end of forloop1

    $invalid_unsernames_array = $array;

    return $invalid_unsernames_array;

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
    $space_count = 0;
    for($i=0; $i<$count_array; $i++){
        print "element $i: $array[$i]";
        if($array[$i] = ' '){
            $space_count++;
        }
        print "number of spaces: $space_count";
    }
}




$str = '  12346, ';
$str_recipients = ',,,,,,,,,user1,      us,er2   u,ser3';
$str_recipients2 = 'user1 user2  user3 user4 user6, user7,';
$str_recipients3 = 'user1,user2,user3,user4,user6,user7,';
$containsSpace = contains_space($str, 2,0) ? 'TRUE' : 'FALSE';
$containsComma = form_contains_comma($str) ? 'TRUE' : 'FALSE';

print '<h2>$str == "' . $str . '"</h2>';
print '<h2>$str contains spaces: ' . $containsSpace . '</h2>';
print '<h2>$str contains comma: ' . $containsComma . '</h2>';
form_separate_recipient_usernames($str_recipients);
form_separate_recipient_usernames($str_recipients2);
form_separate_recipient_usernames($str_recipients3);

$number_array = array('zero', 'one', 'two', 'three', 'four', 'five', 'six');
$roman_numerals = array('i', 'ii', 'iii', 'iv', 'v');

// array_test($number_array, $roman_numerals);

$postRecipients = 'user1, user 3, user6, gwen maybe michael, bluth go,b use r8 ';
$recipientsArray = form_separate_recipient_usernames($postRecipients);
$validUsernames = form_valid_usernames($recipientsArray);
$invalidUsernames = form_invalid_usernames($recipientsArray);

print '<br><h3>';

print '$_POST[\'recipients\']: ';

foreach($recipientsArray as $value) {
    print $value . '|';
}

print '<br><br>valid usernames:  ';

foreach($validUsernames as $value){
    print $value . '|';
}

print '<br><br>invalid usernames:  ';

foreach($invalidUsernames as $value){
    print $value . '|';
}

print '<h3>';

print '<br><br> // explode test:';

explode_test('   ,   this that');


?>