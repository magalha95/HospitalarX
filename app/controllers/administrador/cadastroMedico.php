<?php
	include ("../../conexao.php");
	/*Verifica se o usuario executou uma ação*/
	if(isset($_POST["enviar"])){

		/*1-Registro dos dados*/
		if (!isset($_SESSION)) {
			session_start();

			foreach ($_POST as $chave => $valor) {
				$_SESSION[$chave] = $link->mysql_real_escape_string($valor);
			}

		}

		/*2-Validação dos Dados*/
		if ((!is_numeric($_POST['registroMedico'])) && strlen($_POST['registroMedico'] <= 99999))
			$erro[]= "Digite apenas números no registro do médico.";

		if (strlen($_POST['nomeMedico']) == 0)
			$erro[]= "Digite o nome do médico.";

		if (!(preg_match("^([0-9]){3}\.([0-9]){3}\.([0-9]){3}-([0-9]){2}$", $_POST['cpfMedico'])) 
			$erro[]= "Digite um CPF válido.";

		if (!(preg_match('/^\d{1,2}\/\d{1,2}\/\d{4}$/', $_POST['dataMedico'])))
			$erro[]= "Digite uma data válida Ex: DD/MM/YYYY";

		if (strlen($_POST['ruaMedico']) == 0)
			$erro[]= "Digite o nome da rua...";
	
		if (strlen($_POST['numeroMedico']) == 0) || strlen($_POST['numeroMedico']) <= 9999) )
		    $erro[]= "Digite o numero da casa/ap...";

		if (strlen($_POST['bairroMedico']) == 0)
			$erro[]= "Digite o nome do bairro...";

		if (!preg_match('/^[0-9]{5,5}([- ]?[0-9]{3,3})?$/', $_POST['cepMedico'])
			$erro[]= "Digite um cep válido...";	

		if (strlen($_POST['cidadeMedico']) == 0)
			$erro[]= "Digite o nome da cidade...";	

		if (strlen($_POST['estadoMedico']) == 0) 
			$erro[]= "Digite o nome do estado...";		

		if (strlen($_POST['paisMedico']) == 0) 
			$erro[]= "Digite o nome do país...";

		if (count($erro) == 0) {
			/*3-Salvar no banco*/
			// include("../../models/administrador/cadastroMedico.php");
			// $modelCadastroMedico = new cadastroMedico($_POST['registroMedico'], $_POST['nomeMedico'], $_POST['cpfMedico'], $_POST['dataMedico'], $_POST['numeroMedico'], $_POST['cepMedico'], $_POST['cidadeMedico'],$_POST['estadoMedico'],$_POST['paisMedico']);
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
					'$_SESSION[registroMedico]',
					'$_SESSION[nomeMedico]',
					'$_SESSION[cpfMedico]',
					'$_SESSION[dataMedico]',
					'$_SESSION[ruaMedico]',
					'$_SESSION[numeroMedico]',
					'$_SESSION[bairroMedico]',
					'$_SESSION[cepMedico]',
					'$_SESSION[cidadeMedico]',
					'$_SESSION[estadoMedico]',
					'$_SESSION[paisMedico]'
					)";

			$confirma = $link->query($sql_code) or die ($link->error);

			if ($confirma) {
					unset($_SESSION[registroMedico],
					$_SESSION[nomeMedico],
					$_SESSION[cpfMedico],
					$_SESSION[dataMedico],
					$_SESSION[ruaMedico],
					$_SESSION[numeroMedico],
					$_SESSION[bairroMedico],
					$_SESSION[cepMedico],
					$_SESSION[cidadeMedico],
					$_SESSION[estadoMedico],
					$_SESSION[paisMedico]);

					echo "<script> location.href='../../views/administrador/index.html'</script>";
			}else{
				$erro[] = $confirma;
			}		

		}else if (count($error > 0)) {
			echo "<div class='error'>";
				foreach ($error as $valor) {
					echo "$valor <br>";
				}
			echo "</div>";
		}

	}
?>