<?php

function conectar(){
	$host = "localhost";
	$usuario = "root";
	$senha = "";
	$bd = "bd_hospital";
	$link = mysql_connect($host, $usuario, $senha);
	mysql_select_db($bd);	
}

function desconectar(){
	mysql_close($link);
}

function executar($sql_code){
	conectar();
	return mysql_query($sql_code);
	desconectar();
}

?>