<?php
	include ("../../conexao.php");
	/*Verifica se o usuario executou uma ação*/
	if(isset($_POST["enviar"])){
		/*1-Registro dos dados*/
		foreach ($_POST as $chave => $valor) {
			$valores[$chave] = mysql_real_escape_string($valor);
		}
		$cont  = 0;
		/*2-Validação dos Dados*/
		if ((!is_numeric($valores['registroMedico'])) && strlen($valores['registroMedico'] <= 9999999)){
			$erro[] = "Digite apenas números no registro do médico.";
			$cont++;
		}

		if (strlen($valores['nomeMedico']) == 0){
			$erro[]= "Digite o nome do médico.";
			$cont++;
		}

		#if (!preg_match("^([0-9]){3}\.([0-9]){3}\.([0-9]){3}-([0-9]){2}$", $valores['cpfMedico'])) 
		#	$erro[]= "Digite um CPF válido.";

		if (!(preg_match('/^\d{1,2}\/\d{1,2}\/\d{4}$/', $valores['dataMedico']))){
			$erro[]= "Digite uma data válida Ex: DD/MM/YYYY";
			$cont++;
		}

		if (strlen($valores['ruaMedico']) == 0){
			$cont++;
			$erro[]= "Digite o nome da rua...";
		}
	
		if (!((strlen($valores['numeroMedico']) > 0 ) && (strlen($valores['numeroMedico']) <= 9999))){
			$cont++;
		    $erro[]= "Digite o numero da casa/ap...";
		}

		if (strlen($valores['bairroMedico']) == 0){
			$cont++;
			$erro[]= "Digite o nome do bairro...";
		}

		if (!preg_match('/^[0-9]{5,5}([- ]?[0-9]{3,3})?$/', $valores['cepMedico'])){
			$cont++;
			$erro[]= "Digite um cep inválido...";	
		}

		if (strlen($valores['cidadeMedico']) == 0){
			$cont++;
			$erro[]= "Digite o nome da cidade...";	
		}

		if (strlen($valores['estadoMedico']) == 0) {
			$erro[]= "Digite o nome do estado...";	
			$cont++;	
		}

		if (strlen($valores['paisMedico']) == 0) {
			$erro[]= "Digite o nome do país...";
			$cont++;
		}
		 if ($cont == 0) {
			/*3-Salvar no banco*/
			// include("../../models/administrador/cadastroMedico.php");
			// $modelCadastroMedico = new cadastroMedico($valores['registroMedico'], $valores['nomeMedico'], $valores['cpfMedico'], $valores['dataMedico'], $valores['numeroMedico'], $valores['cepMedico'], $valores['cidadeMedico'],$valores['estadoMedico'],$valores['paisMedico']);
			$sql_code =  "INSERT INTO Endereco (
					idPessoa,
					rua,
					numero,
					bairro,
					cep,
					cidade,
					estado,
					pais)
					VALUES(
					NULL,
					'$valores[ruaMedico]',
					'$valores[numeroMedico]',
					'$valores[bairroMedico]',
					'$valores[cepMedico]',
					'$valores[cidadeMedico]',
					'$valores[estadoMedico]',
					'$valores[paisMedico]'
					)";
				$valoresRegistro = $valores['registroMedico'];
				$valoresCpf = $valores['cpfMedico'];
				$valoresNome = $valores['nomeMedico'];
				$DFm = explode("/",$valores['dataMedico']);
				$valoresData = $DFm[2].'-'.$DFm[1].'-'.$DFm[0];
				
				$result = executar($sql_code);
				$idEndereco  = 0;
				if($result){
					$sql_code = "SELECT * FROM Endereco ORDER BY idPessoa DESC LIMIT 1";
					$result = executar($sql_code);
					$row = mysql_fetch_array($result, MYSQL_NUM);
					$idEndereco = $row[0];
					$sql_code =  "INSERT INTO `Medico` (`registro`, `cpf`, `nome`, `dataNasc`, `Endereco_idPessoa`) VALUES ('$valoresRegistro', '$valoresCpf', '$valoresNome', '$valoresData', '$idEndereco')";
					$result = executar($sql_code);
					if($result){
						echo "Cadastro Efetuado com Sucesso!";
						echo "<script> setTimeout(\"location.href = '../../views/administrador/index.html';\", 1500); </script>";
					}
				}
		
		}else {
		 	echo "<div class='error'>";
		 		foreach ($erro as $valor) {
		 			echo "$valor <br>";
				}
		 	echo "</div>";
			echo "<script> setTimeout(\"location.href = '../../views/administrador/cadastrarMedico.php';\", 1500); </script>";


		}

	}
?>