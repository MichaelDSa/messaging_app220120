<?php

// CREATE DATABASE
function create_db($hostname, $username, $password, $database){   
    print "<p>FUNCTION CALL:<strong><code>create_db()</code></strong> - Creates database only. <code>create_db()</code> is used by:<code>create_usr(), create_t(), create_ts()</code></p>";
    $sql_create_db = "CREATE DATABASE IF NOT EXISTS {$database}";
    $dbc = mysqli_connect($hostname, $username, $password);
    mysqli_query($dbc, $sql_create_db);
    if (mysqli_connect_errno()){
        return printf("CONNECTION FAILED. %s\n", mysqli_connect_error());
    } else {
        print "<p>CONNECTION ESTABLISHED.</p>
        <p>DATABASE:<strong><code> {$database}</code></strong></p>
        ------------<br>";
    }
    mysqli_close($dbc);
}

// CREATE USER 
//(creates database if not exists, and 1 or more users with priviliges specified in $sql_grants parameter.)
function create_usr($hostname, $username, $password, $database, $db_users, $db_user_pswds, $sql_grants){
    print "<p>FUNCTION CALL:<strong><code>create_usr()</code></strong> - Creates database and user(s) with separate priviliges.</p>";
    
    if(count($db_users) !== count($db_user_pswds) || count($sql_grants) !== count($db_users)){
        return print "<strong>Please re-assign elements to fit criteria.<br></strong><i>user name and pswd array elements: </i><br>1) must not empty, <br>2) must be string types.<strong> <br>3) arrays must return same count().</strong>";
    }
    for($i = 0; $i < count($db_users); $i++){
        if(empty($db_users[$i]) || empty($db_user_pswds[$i]) || empty($sql_grants[$i])){
            return print "<strong>Please re-assign elements to fit criteria.<br></strong><i>user name and pswd array elements: </i><strong> <br>1) must not empty</strong>, <br>2) must be string types. <br>3) arrays must return same count().";
        }
        if(gettype($db_users[$i]) != "string" || gettype($db_user_pswds[$i]) != "string" || gettype($sql_grants[$i]) != "string"){
            return print "<strong>Please re-assign elements to fit criteria.<br></strong><i>user name and pswd array elements: </i><br>1) must not empty, <strong> <br>2) must be string types</strong>. <br>3) arrays must return same count().";
        }
    }
    //create db if not exists:
    create_db($hostname, $username, $password, $database);

    $count = count($db_users);
    for($i = 0; $i < $count; $i++){
        $sql_user_create = "
        CREATE USER IF NOT EXISTS '$db_users[$i]'@'$hostname' 
        IDENTIFIED BY '$db_user_pswds[$i]'
        ";
        // add username & password criteria to sql statements
        $sql_grants[$i] .= " TO '$db_users[$i]'@'$hostname' IDENTIFIED BY '$db_user_pswds[$i]'";

        $dbc = mysqli_connect($hostname, $username, $password, $database);
        //create users:
        mysqli_query($dbc, $sql_user_create);
        //grant priviliges to users
        mysqli_query($dbc, $sql_grants[$i]);
        // print any errors:
        if (mysqli_connect_errno()){
            return printf("CONNECTION FAILED. %s\n", mysqli_connect_error());
        } else {
            print "
            <p><code>create_usr():<code> CONNECTION ESTABLISHED.</p>
            <p>DATABASE:<strong><code> {$database}</code></strong></p>
            <p>USER: <strong><code> {$db_users[$i]}</code></strong></p>
            <p>PSWD: <strong><code> {$db_user_pswds[$i]}</code></strong></p>
            <p>GRANT QUERY:<strong><code> {$sql_grants[$i]}</code></strong></p>
            ------------<br>";
        }

    }
    mysqli_close($dbc);
}

// CREATE TABLE:
function create_t($hostname, $username, $password, $database, $sql_table){
    print "<p>FUNCTION CALL:<strong><code>create_t()</code></strong> - Creates table in specified database. <code>create_t()</code> is used by: <code>create_ts()</code>.</p>";
    //connect to database:
    $dbc = mysqli_connect($hostname, $username, $password, $database);
    mysqli_query($dbc, $sql_table);
    if (mysqli_connect_errno()){
        return printf("CONNECTION FAILED. %s\n", mysqli_connect_error());
    } else {
        print "<p>CONNECTION ESTABLISHED.<strong>TABLE CREATED.</strong></p>
        <p>DATABASE:<strong><code> {$database}</code></strong></p>
        <p>TABLE QUERY: <strong><code>{$sql_table}</code></strong></p>
        ------------<br>";
    }
}

// CREATE ONE OR MORE TABLES ON ONE OR MORE DATABASES. ONE HOST:
function create_ts($hostname, $username, $password, $database, $sql_tables){    
    // print "<p>FUNCTION CALL:<strong><code>create_ts()</code></strong> - Creates table(s) in specified database.</p>";
    print "<p> FUNCTION CALL:<strong><code style='font-size: 20px'>create_ts() - This function calls create_t() multiple times.</code></strong></p><p>--------------</p>";
    $n = count($sql_tables);
    for($i = 0; $i < $n; $i++){
        create_t($hostname, $username, $password, $database, $sql_tables[$i]);
    }
    print "<p>---^^---end of <code>create_ts()</code>---^^---</p>";
}

//PRINT FILEPATH
function print_path($dest){
    // return filepath of .sql file
    return "<br>-</br>.sql file location: <strong><code>{$dest}</code></strong></br>-</br>";            
}

//SAVE DATABASE TO FILE
function dump_db($dump_file_db, $mysqldump, $username, $password, $hostname, $database){
    print "<p> FUNCTION CALL:<strong><code>dump_db()</code></strong> - Dump database and contents/data</p>";
    // DUMP DATABASE
    print print_path($dump_file_db);
    // exec("{$mysqldump} --user={$username} --password={$password} --host={$hostname} {$database} --result-file={$dump_file_db} 2>&1", $output);
    exec("{$mysqldump} -u {$username} -p{$password} -h {$hostname} {$database} -r {$dump_file_db} 2>&1", $output); // use of abbreviations
    var_dump($output);
    print "<br>--------------";
}

// SAVE TABLE TO FILE
function dump_t($dump_file_t, $mysqldump, $username, $password, $hostname, $database, $table){
    print "<p> FUNCTION CALL:<strong><code>dump_t()</code></strong> - Dump table.</p>";
    // DUMP TABLE
    print print_path($dump_file_t);
    exec("{$mysqldump} --user={$username} --password={$password} --host={$hostname} {$database} {$table} --result-file={$dump_file_t} 2>&1", $output);
    var_dump($output);
    print "</p>See file location to verify.</p>";
    print "<br>--------------";
}

// SAVE DATABASE STRUCTURE (without contents) TO FILE
function dump_ds($dump_file_ds, $mysqldump, $username, $password, $hostname, $database){
    print "<p> FUNCTION CALL:<strong><code>dump_ds()</code></strong> - Dump database structure. No contents/data.</p>";
    // print path and filename:
    print print_path($dump_file_ds);
    // dump database structure:
    exec("{$mysqldump} --user={$username} --password={$password} --host={$hostname} {$database} --no-data --result-file={$dump_file_ds} 2>&1", $output);
    var_dump($output);
    print "<br>--------------";
}

// used by restore functions.
function exec_restore($path, $username, $password, $database, $file){
    exec("{$path} -u {$username} -p{$password} {$database} < {$file}");
}

// RESTORE DATABASE (AND ITS CONTENTS) FROM FILE
function restore_db($dump_file_db, $mysql, $username, $password, $hostname, $database){
    print "<p> FUNCTION CALL:<strong><code>restore_db()</code></strong> - restore database, tables(s) and data/content from dump file, but not users & priviliges</p>";
    // RESTORE DATABASE
    print print_path($dump_file_db);    
    // create database if not exists:
    create_db($hostname, $username, $password, $database);        
    // restore database        
    exec_restore($mysql, $username, $password, $database, $dump_file_db);    
    print "<p>check mysql monitor or phpMyAdmin to verify restoration of database</p>";
    print "--------------";
}

//RESTORE TABLE FROM FILE
function restore_t($dump_file_t, $mysql, $username, $password, $hostname, $database){
    print "<p> FUNCTION CALL:<strong><code>restore_t()</code></strong> - restore single table from dump file.</p>
    <p> To restore multiple tables, loop this function, or restore from <code>restore_db()</code></p>";
    // print path and filename:
    print_path($dump_file_t);
    // create database if not exists:
    create_db($hostname, $username, $password, $database);
    // restore table assuming database exists:
    exec_restore($mysql, $username, $password, $database, $dump_file_t);    
    print "<p>check mysql monitor or phpMyAdmin to verify restoration of table</p>";
    print "--------------";
}

// RESTORE DATABASE STRUCTURE (and delete existing content) FROM FILE. CONSIDER FIRST USING dump_ds()
function restore_ds($dump_file_ds, $mysql, $username, $password, $hostname, $database){
    print "<p> FUNCTION CALL:<strong><code>restore_ds()</code></strong> - restore database structure (and delete existing content/data in db) from dump file</p>";
        // print path and filename:
        print_path($dump_file_ds);
        // create database if not exists:
        create_db($hostname, $username, $password, $database);
        // restore table assuming database exists:
        exec_restore($mysql, $username, $password, $database, $dump_file_ds);    
        print "<p>check mysql monitor or phpMyAdmin to verify restoration of database structure, which should be empty.</p>";
}


?>