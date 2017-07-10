<!DOCTYPE html>
<html lang="pt-Br">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="Ítalo Magalhães da Silva" content="">

        <title>Cadastrar Enfermeiro</title>

        <!-- Bootstrap Core CSS -->
        <link href="/HospitalarX/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome CSS -->
        <link href="/HospitalarX/css/font-awesome.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="/HospitalarX/css/animate.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="/HospitalarX/css/style.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>

         <!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
         <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" /> 

        <!-- Template js -->
        <script src="/HospitalarX/js/jquery-2.1.1.min.js"></script>
        <script src="/HospitalarX/bootstrap/js/bootstrap.min.js"></script>
        <script src="/HospitalarX/js/jquery.appear.js"></script>
        <!-- <script src="/HospitalarX/js/contact_me.js"></script> -->
        <!-- <script src="/HospitalarX/js/jqBootstrapValidation.js"></script> -->
        <script src="/HospitalarX/js/modernizr.custom.js"></script>
        <script src="/HospitalarX/js/script.js"></script>
        <script src="/HospitalarX/js/jquery.mask.js"></script>  
    </head>

    <body>

        <!-- Start Logo Section -->
        <section id="logo-section" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo text-center">
                            <h1>Cadastrar Enfermeiro</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Logo Section -->


        <!-- Start Main Body Section -->
        <div class="mainbody-section text-center">
            <div class="container">
                <div class="row">
                  

<!-- HTML Form (wrapped in a .bootstrap-iso div) -->
 <div class="mainbody-section text-center bootstrap-iso">
    <div class="container">
        <div class="row">
            <form method="POST" action="../../controllers/administrador/cadastroEnfermeiro.php">
                 <div class="form-group ">
                  <label class="control-label requiredField" for="registroEnfermeiro">
                   Registro Enfermeiro
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control crm" id="registroEnfermeiro" name="registroEnfermeiro" placeholder="Digite um registro..." type="text"/>
                 </div>
                 
                 <div class="form-group ">
                  <label class="control-label requiredField" for="nomeEnfermeiro">
                   Nome
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control" id="nomeEnfermeiro" name="nomeEnfermeiro" placeholder="Digite um nome..." type="text"/>
                 </div>
                 
                 <div class="form-group ">
                  <label class="control-label " for="cpfEnfermeiro">
                   CPF
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control cpf" id="cpfEnfermeiro" name="cpfEnfermeiro" placeholder="Digite um cpf..." type="text"/>
                 </div>
             
                 <div class="form-group ">
                  <label class="control-label " for="dataEnfermeiro">
                   Data Nascimento
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control date" id="dataEnfermeiro" name="dataEnfermeiro" placeholder="MM/DD/YYYY" type="text"/>
                 </div>

                 <div class="form-group ">
                  <label class="control-label " for="horasPlantaoEnfermeiro">
                   Horas de Plantão
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control time" id="horasPlantaoEnfermeiro" name="horasPlantaoEnfermeiro" placeholder="00:00:00" type="text"/>
                 </div>

                 <div class="form-group ">
                  <label class="control-label " for="ruaEnfermeiro">
                   Rua
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control" id="ruaEnfermeiro" name="ruaEnfermeiro" placeholder="Digite uma rua..." type="text"/>
                 </div>
             
                 <div class="form-group ">
                  <label class="control-label " for="numeroEnfermeiro">
                   Numero
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control number" id="numeroEnfermeiro" name="numeroEnfermeiro" placeholder="Digite um numero..." type="text"/>
                 </div>

                 <div class="form-group ">
                  <label class="control-label " for="bairroEnfermeiro">
                   Bairro
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control" id="bairroEnfermeiro" name="bairroEnfermeiro" placeholder="Digite um bairro..." type="text"/>
                 </div>
             
                 <div class="form-group ">
                  <label class="control-label " for="cepEnfermeiro">
                   CEP
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control cep" id="cepEnfermeiro" name="cepEnfermeiro" placeholder="Digite um CEP..." type="text"/>
                 </div>

                 <div class="form-group ">
                  <label class="control-label " for="cidadeEnfermeiro">
                   Cidade
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control" id="cidadeEnfermeiro" name="cidadeEnfermeiro" placeholder="Digite uma cidade" type="text"/>
                 </div>
             
                 <div class="form-group ">
                  <label class="control-label " for="estadoEnfermeiro">
                   Estado
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <select  class="form-control" id="estadoEnfermeiro" name="estadoEnfermeiro"> 
                    <option value="estado">Selecione o Estado</option> 
                    <option value="ac">Acre</option> 
                    <option value="al">Alagoas</option> 
                    <option value="am">Amazonas</option> 
                    <option value="ap">Amapá</option> 
                    <option value="ba">Bahia</option> 
                    <option value="ce">Ceará</option> 
                    <option value="df">Distrito Federal</option> 
                    <option value="es">Espírito Santo</option> 
                    <option value="go">Goiás</option> 
                    <option value="ma">Maranhão</option> 
                    <option value="mt">Mato Grosso</option> 
                    <option value="ms">Mato Grosso do Sul</option> 
                    <option value="mg">Minas Gerais</option> 
                    <option value="pa">Pará</option> 
                    <option value="pb">Paraíba</option> 
                    <option value="pr">Paraná</option> 
                    <option value="pe">Pernambuco</option> 
                    <option value="pi">Piauí</option> 
                    <option value="rj">Rio de Janeiro</option> 
                    <option value="rn">Rio Grande do Norte</option> 
                    <option value="ro">Rondônia</option> 
                    <option value="rs">Rio Grande do Sul</option> 
                    <option value="rr">Roraima</option> 
                    <option value="sc">Santa Catarina</option> 
                    <option value="se">Sergipe</option> 
                    <option value="sp">São Paulo</option> 
                    <option value="to">Tocantins</option> 
                  </select>
                 </div>
                 
                 <div class="form-group ">
                  <label class="control-label " for="paisEnfermeiro">
                   Pa&iacute;s
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control" id="paisEnfermeiro" name="paisEnfermeiro" placeholder="Digite um pa&iacute;s..." type="text"/>
                 </div>

                 <div class="form-group">
                  <div>
                   <button class="btn btn-primary" name="enviar" type="submit">
                    Enviar
                   </button>
                  </div>
                 </div>

            </form>
        </div>
    </div>
</div>                 
                </div>
            </div>
        </div>
        <!-- End Main Body Section -->

        <!-- Start Copyright Section -->
        <div class="copyright text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div>Desenvolvido por Ítalo Magalhães da Silva, Lucas Félix e Ygor Magalhães</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Copyright Section -->
        <script type="text/javascript">
        $('.number').mask('######', {'translation': {
                                        Y: {pattern: /[0-9]/}
                                      }
                                })
          $(document).ready(function(){
          $('.date').mask('00/00/0000');
          $('.crm').mask('0000000');
          $('.time').mask('00:00:00');
          $('.cep').mask('00000-000');
          $('.phone').mask('(00) 0000-0000');
          $('.cpf').mask('000.000.000-00', {reverse: true});
          $('.money').mask('000.000.000.000.000,00', {reverse: true});
          $('.money2').mask("#.##0,00", {reverse: true});
          $('.selectonfocus').mask("00/00/0000", {selectOnFocus: true});
        });
        </script>
    </body>

</html>
