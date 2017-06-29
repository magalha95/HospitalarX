<?php

$host = "localhost";
$usuario = "root";
$senha = "";
$bd = "bd_hospital";

$link = mysql_connect($host, $usuario, $senha);
$db = mysql_select_db($bd,$link);

if(!$link){
    echo "Erro ao conectar ao banco de dados!";
    exit();
}else{
	echo "Sucesso!!!";
};

?>