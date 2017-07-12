<?php
	include ("../../conexao.php");
	/*Verifica se o usuario executou uma ação*/
		if(isset($_POST["enviar"])){

			if(isset($_POST["tipoLeito"])){
					$codLeito = $_POST["codigoLeito"];  
					$tipoLeito = $_POST["tipoLeito"];
					$desObjetos = $_POST["objetosLeito"];

					$sql_code = " INSERT INTO `Leito`(`idLeito`, `tipo`, `objetos`) VALUES ('$codLeito', '$tipoLeito', '$desObjetos')";
					$result=executar($sql_code);
					
					if($result == 1){
						echo "Leito cadastrado com sucesso";
						echo "<script> setTimeout(\"location.href = '../../views/administrador/cadastrarLeito.php';\", 1500); </script>";
					}
			}else{
				echo "Erro ao cadastrar o leito. Selecione o Tipo de Leito";
						echo "<script> setTimeout(\"location.href = '../../views/administrador/cadastrarLeito.php';\", 1500); </script>";
			}	
		}
?>