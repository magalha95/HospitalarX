<?php

$host = "localhost";
$usuario = "root";
$senha = "";
$bd = "bd_hospital";

$link = mysqli_connect($host, $usuario, $senha, $bd);

if(!$link){
    echo "Erro ao conectar ao banco de dados!";
    exit();
}else{
	echo "Sucesso!!!";
};

?>