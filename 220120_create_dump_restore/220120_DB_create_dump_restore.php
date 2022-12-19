<?php
// Info source of mysql commands used here, SEE: 
// 1) https://www.databasestar.com/mysqldump/
// 2) https://dev.mysql.com/doc/refman/5.7/en/mysqldump.html
// also see: https://d.sb/2006/12/restore-mysql-dump-using-php
include('functions/functions_DB_create_dump_restore.php');
// include('dump_sql/');
ini_set('display_errors',1);
ini_set('display_startup_errors',1);
error_reporting(E_ALL);

print "
<style> code {font-size: 17px} </style>
<strong><code style='white-space: nowrap; font-size: 18px;'>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<br>
>>>>>>>>>>>>>>>>>>>>>> CREATE, DUMP or RESTORE: <<<<<<<<<<<<<<<<<<<<<<br>
>>>>>>> uncomment function calls to create, dump or restore <<<<<<<<<<br>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<br>
>>>>>>>>>>>>>>>>>>>> DB_create_dump_restore.php <<<<<<<<<<<<<<<<<<<<<<br>
---------------------------------------------------------------------<br>
</strong></code>
";

// DATABASE CRITERIA:
$username = "root";
$password = "root";
$hostname = "localhost";
$database = "chat_app220120";
$charset = 'utf8';

// PATH AND FILENAME CRITERIA:
// for unix/linux, try starting with this filepath:
// $dump_file_db = dirname(__FILE__) . "/dump.sql";
// Following variables set up for MAMP on Windows:
// use forward slashes for compatiblilty with both mysql monitor and windows.
// By default mamp host folder is /htdocs. Change 'clone' to 'htdocs' if that is so.
$dump_file_db = "C:/mamp/clone1/220120_create_dump_restore/dump_sql/dump.sql";// dump database and contents.
$dump_file_t = "C:/mamp/clone1/220120_create_dump_restore/dump_sql/dump_table.sql";
$dump_file_ds = "C:/mamp/clone1/220120_create_dump_restore/dump_sql/dump_structure_only.sql";
$mysqldump = "C:/MAMP/bin/mysql/bin/mysqldump";
$mysql = "C:/MAMP/bin/mysql/bin/mysql";

// USERS, PASSWORDS & GRANT STATEMENTS:
// count() must return same number for all arrays:
$db_users = array(
    0 => "first", 
    1 => "second"
);
$db_user_pswds = array(
    0 => "1234", 
    1 => "1234"
);
// In these sql stmnts, do not include "TO '$db_users[$i]'@'$hostname' IDENTIFIED BY '$db_user_pswds[$i]'". This will be added in create_usr().
$sql_grant_admin = "GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, INDEX ON {$database}.* ";
$sql_grant_reg00 = "GRANT SELECT, INSERT, UPDATE, DELETE ON {$database}.* ";

$sql_grants = array(
    0 => $sql_grant_admin, 
    1 => $sql_grant_reg00
);

// TABLE NAMES & TABLE SQL STATEMENTS:
// table sql statements saved in .txt files.
$table = ""; // used in dump & restore functions
$sql_table00 = file_get_contents('sql_txt/example_table0.txt');
$sql_table01 = file_get_contents('sql_txt/example_table1.txt');
$sql_tables = array(
    0 => $sql_table00, 
    1 => $sql_table01
);


////////////////////////////////////////////////////////////////////
/////// UNCOMMENT FUNCTION CALLS TO CREATE, DUMP OR RESTORE. ///////
/////// MODIFY PARAMETERS IF NECESSARY. ////////////////////////////
////////////////////////////////////////////////////////////////////


//////////////////////////////
//////////+--------+//////////
//////////| CREATE:|//////////
//////////+--------+//////////
//////////////////////////////

# Create database: Does not create users or tables:
// create_db($hostname, $username, $password, $database); 

# Create users: One database created if not exists. One or more users created for that database:
// create_usr($hostname, $username, $password, $database, $db_users, $db_user_pswds, $sql_grants);

# Create table: first assign variables: $charset, $table, $sql_table00:
# you can also have variables assign sql from .txt in /sql_txt folder.
// create_t($hostname, $username, $password, $database, $sql_table00);

# Create one or more tables on one database with a user using $sql_tables
// create_ts($hostname, $username, $password, $database, $sql_tables);




/////////////////////////////
//////////+-------+//////////
//////////| DUMP: |//////////
//////////+-------+//////////
/////////////////////////////

# -> FIRST: Set path & filename criteria; Set database criteria

# Dump database with all tables:
// dump_db($dump_file_db, $mysqldump, $username, $password, $hostname, $database);

# Dump table:
// dump_t($dump_file_t, $mysqldump, $username, $password, $hostname, $database, $table);

# Dump database structure only, no content:
// dump_ds($dump_file_ds, $mysqldump, $username, $password, $hostname, $database);





////////////////////////////////
//////////+----------+//////////
//////////| RESTORE: |//////////
//////////+----------+//////////
////////////////////////////////

# -> FIRST: Set path & filename criteria; Set database criteria

# restore database and tables from dump file:
// restore_db($dump_file_db, $mysql, $username, $password, $hostname, $database);

# restore table from dump file
// restore_t($dump_file_t, $mysql, $username, $password, $hostname, $database);

# restore database structure only. 
# Warning: This will delete content if database/tables exist. use dump_db() first.
// restore_ds($dump_file_ds, $mysql, $username, $password, $hostname, $database); //CONSIDER USING dump_db() TO BACK UP CONTENT FIRST.

