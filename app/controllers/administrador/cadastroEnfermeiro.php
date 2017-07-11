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
		if ((!is_numeric($valores['registroEnfermeiro'])) && strlen($valores['registroEnfermeiro'] <= 9999999)){
			$erro[] = "Digite apenas números no registro do enfermeiro.";
			$cont++;
		}

		if (strlen($valores['nomeEnfermeiro']) == 0){
			$erro[]= "Digite o nome do enfermeiro.";
			$cont++;
		}

		#if (!preg_match("^([0-9]){3}\.([0-9]){3}\.([0-9]){3}-([0-9]){2}$", $valores['cpfEnfermeiro'])) 
		#	$erro[]= "Digite um CPF vEnfermeiro";

		if (!(preg_match('/^\d{1,2}\/\d{1,2}\/\d{4}$/', $valores['dataEnfermeiro']))){
			$erro[]= "Digite uma data válida Ex: DD/MM/YYYY";
			$cont++;
		}

		if (strlen($valores['ruaEnfermeiro']) == 0){
			$cont++;
			$erro[]= "Digite o nome da rua...";
		}
	
		if (!((strlen($valores['numeroEnfermeiro']) > 0 ) && (strlen($valores['numeroEnfermeiro']) <= 9999))){
			$cont++;
		    $erro[]= "Digite o numero da casa/ap...";
		}

		if (strlen($valores['bairroEnfermeiro']) == 0){
			$cont++;
			$erro[]= "Digite o nome do bairro...";
		}

		if (!preg_match('/^[0-9]{5,5}([- ]?[0-9]{3,3})?$/', $valores['cepEnfermeiro'])){
			$cont++;
			$erro[]= "Digite um cep inválido...";	
		}

		if (strlen($valores['cidadeEnfermeiro']) == 0){
			$cont++;
			$erro[]= "Digite o nome da cidade...";	
		}

		if (strlen($valores['estadoEnfermeiro']) == 0) {
			$erro[]= "Digite o nome do estado...";	
			$cont++;	
		}

		if (strlen($valores['paisEnfermeiro']) == 0) {
			$erro[]= "Digite o nome do país...";
			$cont++;
		}
		 if ($cont == 0) {
			/*3-Salvar no banco*/
			// include("../../models/administrador/cadastroMedico.php");
			// $modelCadastroMedico = new cadastroMedico($valores['registroEnfermeiro'], $valores['nomeMedico'], $valores['cpfEnfermeiro'], $valores['dataEnfermeiro'], $valores['numeroEnfermeiro'], $valores['cepEnfermeiro'], $valores['cidadEnfermeiromeiro'],$valores['estadoEnfermeiro'],$valores['paisEnfermeiro']);
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
					'$valores[ruaEnfermeiro]',
					'$valores[numeroEnfermeiro]',
					'$valores[bairroEnfermeiro]',
					'$valores[cepEnfermeiro]',
					'$valores[cidadeEnfermeiro]',
					'$valores[estadoEnfermeiro]',
					'$valores[paisEnfermeiro]'
					)";
				$valoresRegistro = $valores['registroEnfermeiro'];
				$valoresCpf = $valores['cpfEnfermeiro'];
				$valoresNome = $valores['nomeEnfermeiro'];
				$DFm = explode("/",$valores['dataEnfermeiro']);
				$valoresData = $DFm[2].'-'.$DFm[1].'-'.$DFm[0];
				$vHr = explode(":",$valores['horasPlantaoEnfermeiro']);
				$valoresTime = $vHr[0].':'.$vHr[1].':'.$vHr[2];
				
				$result = executar($sql_code);
				$idEndereco  = 0;
				if($result){
					$sql_code = "SELECT * FROM Endereco ORDER BY idPessoa DESC LIMIT 1";
					$result = executar($sql_code);
					$row = mysql_fetch_array($result, MYSQL_NUM);
					$idEndereco = $row[0];
					$sql_code =  "INSERT INTO `Enfermeiro` (`registro`, `cpf`, `nome`, `dataNasc`, `horasPlantao`, `Endereco_idPessoa`) VALUES ('$valoresRegistro', '$valoresCpf', '$valoresNome', '$valoresData', '$valoresTime', '$idEndereco')";
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