<?php
	include ("../../conexao.php");
	/*Verifica se o usuario executou uma ação*/
	if(isset($_POST["enviar"])){

	    if(isset($_POST["registroMedico"])){
	      $sql_code= "DELETE FROM Medico 
	      WHERE registro = ".$_POST['registroMedico'];
	      $result = executar($sql_code);
	      if(!$result){
	      echo '<div class="alert alert-danger" role="alert">
	                <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
	                <span class="sr-only">Error:</span>
	                 Registro inválido ou inexistente!
	            </div>';
	      }else {
	          echo '<div class="alert alert-success" role="alert">
	                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
	                    <span class="sr-only">Sucesso:</span>
	                    Médico removido com sucesso!
	                </div>';
	          echo "<script> setTimeout(\"location.href = '../../views/administrador/index.html';\", 2500); </script>";      
	      }
	    }
  }
?>