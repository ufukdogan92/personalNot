<?php session_start();
ob_start();

$db_host		= "localhost";
$db_user_name 		= "root";
$db_password 		= "";
$db_database_name 	= "notlar";
@mysql_connect($db_host,$db_user_name,$db_password) || die("Veritabanina baglanamadi");
@mysql_select_db($db_database_name) || die ("Veritabani bulanamadi");
@mysql_query("SET NAMES 'utf8'");





function permayap($Filtre) {
    $Form_Mesaj = array ("º"," ","ı","ç","ş","ğ","ü","ö","script", "SCRIPT", "select", "SELECT", "?", "*", "$", "<", "{", "[","\n","İ","Ç","Ş","Ğ","Ü","Ö"," ",";","-","_");
    $Form_Filtre = array("","_","i","c","s","g","u","o","_","_","_","_","_","_","_","_","_","_","_", "i", "c", "s", "g", "u","o","_",";","","_");
    $Dondur = strtolower(str_replace($Form_Mesaj, $Form_Filtre, $Filtre));

    return $Dondur;
}

function sql_guvenlik($data) {
    if ( !isset($data) or empty($data) ) return '';
    if ( is_numeric($data) ) return $data;

    $non_displayables = array(
        '/%0[0-8bcef]/',            // url encoded 00-08, 11, 12, 14, 15
        '/%1[0-9a-f]/',             // url encoded 16-31
        '/[\x00-\x08]/',            // 00-08
        '/\x0b/',                   // 11
        '/\x0c/',                   // 12
        '/[\x0e-\x1f]/'             // 14-31
    );
    foreach ( $non_displayables as $regex )
        $data = preg_replace( $regex, '', $data );
    $data = str_replace("'", "''", $data );
    return $data;
}


