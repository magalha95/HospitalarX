<?php
	include ("../../conexao.php");
	/*Verifica se o usuario executou uma ação*/
	if(isset($_POST["enviar"])){
		$sql_code="SELECT * FROM Consultorio WHERE Medico_registro = '".$_POST['registroMedico']."'";
		$result=executar($sql_code);

		if (mysql_num_rows($result) == 0) {
			$numero = $_POST['telefoneConsultorio'];
		
			$sql_code =  "INSERT INTO Consultorio (
				codConsultorio,
				telefone,
				Medico_registro)
				VALUES(
				'$_POST[codigoConsultorio]',
				'$numero',
				'$_POST[registroMedico]'
				)";
			if(executar($sql_code)){
				echo "Consultorio cadastrado com sucesso";
				echo "<script> setTimeout(\"location.href = '../../views/administrador/cadastrarConsultorio.php';\", 1500); </script>";

			} else {
				echo "Erro ao cadastrar o Consultorio";
				echo "<script> setTimeout(\"location.href = '../../views/administrador/cadastrarConsultorio.php';\", 1500); </script>";

			}
		}else{
			echo "Erro ao cadastrar o Consultorio";
			echo "<script> setTimeout(\"location.href = '../../views/administrador/cadastrarConsultorio.php';\", 1500); </script>";

		}
		
	}
?>