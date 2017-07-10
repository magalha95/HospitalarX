<?php
	include ("../../conexao.php");
	/*Verifica se o usuario executou uma ação*/
	if(isset($_POST["enviar"])){
		/*1-Registro dos dados*/
		foreach ($_POST as $chave => $valor) {
			$valores[$chave] = mysql_real_escape_string($valor);
		}

			$valoresRegistro = $valores['registroMedico'];
			$valoresCpf = $valores['cpfMedico'];
			$valoresNome = $valores['nomeMedico'];
			//print_r($valoresRegistro);
			//print_r($valoresCpf);
			//print_r($valoresNome);

			$sql_code =  "DELETE FROM Medico, Endereco
						  WHERE ('Medico.Endereco_idPessoa'='Endereco.idPessoa') AND (('Medico.registro' = '$valoresRegistro') OR ('Medico.cpf' = '$valoresCpf') OR ('Medico.nome' = '$valoresNome')) ";
				
			$result = executar($sql_code);
			echo "Cadastro Removeu com Sucesso!";
			echo "<script> setTimeout(\"location.href = '../../views/administrador/index.html';\", 1500); </script>";
	}
?>