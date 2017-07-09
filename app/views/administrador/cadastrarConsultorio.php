<?php
	include ("../../conexao.php");
	/*Verifica se o usuario executou uma ação*/
	if(isset($_POST["enviar"])){
		/*1-Registro dos dados*/
		foreach ($_POST as $chave => $valor) {
			$valores[$chave] = mysql_real_escape_string($valor);
		}
		/*2-Validação dos Dados*/
		if ((!is_numeric($valores['registroMedico'])) && strlen($valores['registroMedico'] <= 99999))
			$erro[]= "Digite apenas números no registro do médico.";

		if (strlen($valores['nomeMedico']) == 0)
			$erro[]= "Digite o nome do médico.";

		// if (!preg_match("^([0-9]){3}\.([0-9]){3}\.([0-9]){3}-([0-9]){2}$", $valores['cpfMedico'])) 
		// 	$erro[]= "Digite um CPF válido.";

		if (!(preg_match('/^\d{1,2}\/\d{1,2}\/\d{4}$/', $valores['dataMedico'])))
			$erro[]= "Digite uma data válida Ex: DD/MM/YYYY";

		if (strlen($valores['ruaMedico']) == 0)
			$erro[]= "Digite o nome da rua...";
	
		if (!((strlen($valores['numeroMedico']) > 0 ) && (strlen($valores['numeroMedico']) <= 9999)))
		    $erro[]= "Digite o numero da casa/ap...";

		if (strlen($valores['bairroMedico']) == 0)
			$erro[]= "Digite o nome do bairro...";

		if (!preg_match('/^[0-9]{5,5}([- ]?[0-9]{3,3})?$/', $valores['cepMedico']))
			$erro[]= "Digite um cep válido...";	

		if (strlen($valores['cidadeMedico']) == 0)
			$erro[]= "Digite o nome da cidade...";	

		if (strlen($valores['estadoMedico']) == 0) 
			$erro[]= "Digite o nome do estado...";		

		if (strlen($valores['paisMedico']) == 0) 
			$erro[]= "Digite o nome do país...";

		// if (count($erro) == 0) {
			/*3-Salvar no banco*/
			// include("../../models/administrador/cadastroMedico.php");
			// $modelCadastroMedico = new cadastroMedico($valores['registroMedico'], $valores['nomeMedico'], $valores['cpfMedico'], $valores['dataMedico'], $valores['numeroMedico'], $valores['cepMedico'], $valores['cidadeMedico'],$valores['estadoMedico'],$valores['paisMedico']);
			$sql_code =  "INSERT INTO Medico (
					registroMedico,
					nome,
					cpf,
					dataNascimento,
					rua,
					numero,
					bairro,
					cep,
					cidade,
					estado,
					pais)
					VALUES(
					'$valores[registroMedico]',
					'$valores[nomeMedico]',
					'$valores[cpfMedico]',
					'$valores[dataMedico]',
					'$valores[ruaMedico]',
					'$valores[numeroMedico]',
					'$valores[bairroMedico]',
					'$valores[cepMedico]',
					'$valores[cidadeMedico]',
					'$valores[estadoMedico]',
					'$valores[paisMedico]'
					)";
			
			$result = executar($sql_code);

			echo "<script> location.href='../../views/administrador/index.html'</script>";
		// }else if (count($erro > 0)) {
		// 	echo "<div class='error'>";
		// 		foreach ($erro as $valor) {
		// 			echo "$valor <br>";
		// 		}
		// 	echo "</div>";
		// }

	}
?>