<?php
	include ("../../conexao.php");
	/*Verifica se o usuario executou uma ação*/
	if(isset($_POST["enviar"])){

	    if(isset($_POST["registroEnfermeiro"])){
	      $sql_code= "DELETE FROM Enfermeiro 
	      WHERE registro = ".$_POST['registroEnfermeiro'];
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
	                    Enfermeiro removido com sucesso!
	                </div>';
	          echo "<script> setTimeout(\"location.href = '../../views/administrador/index.html';\", 2500); </script>";      
	      }
	    }
  }
?>