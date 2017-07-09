<!DOCTYPE html>
<html lang="pt-Br">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="Ítalo Magalhães da Silva" content="">

        <title>Administrador</title>

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
                            <h1>Cadastrar Médico</h1>
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
            <form method="POST" action="../../controllers/administrador/cadastroMedico.php">
                 <div class="form-group ">
                  <label class="control-label requiredField" for="registroMedico">
                   Registro M&eacute;dico
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control crm" id="registroMedico" name="registroMedico" placeholder="Digite um registro..." type="text"/>
                 </div>
                 
                 <div class="form-group ">
                  <label class="control-label requiredField" for="nomeMedico">
                   Nome
                   <span class="asteriskField">
                    *
                   </span>
                  </label>
                  <input class="form-control" id="nomeMedico" name="nomeMedico" placeholder="Digite um nome..." type="text"/>
                 </div>
                 
                 <div class="form-group ">
                  <label class="control-label " for="cpfMedico">
                   CPF
                  </label>
                  <input class="form-control cpf" id="cpfMedico" name="cpfMedico" placeholder="Digite um cpf..." type="text"/>
                 </div>
             
                 <div class="form-group ">
                  <label class="control-label " for="dataMedico">
                   Data Nascimento
                  </label>
                  <input class="form-control date" id="dataMedico" name="dataMedico" placeholder="MM/DD/YYYY" type="text"/>
                 </div>

                 <div class="form-group ">
                  <label class="control-label " for="ruaMedico">
                   Rua
                  </label>
                  <input class="form-control" id="ruaMedico" name="ruaMedico" placeholder="Digite uma rua..." type="text"/>
                 </div>
             
                 <div class="form-group ">
                  <label class="control-label " for="numeroMedico">
                   Numero
                  </label>
                  <input class="form-control number" id="numeroMedico" name="numeroMedico" placeholder="Digite um numero..." type="text"/>
                 </div>

                 <div class="form-group ">
                  <label class="control-label " for="bairroMedico">
                   Bairro
                  </label>
                  <input class="form-control" id="bairroMedico" name="bairroMedico" placeholder="Digite um bairro..." type="text"/>
                 </div>
             
                 <div class="form-group ">
                  <label class="control-label " for="cepMedico">
                   CEP
                  </label>
                  <input class="form-control cep" id="cepMedico" name="cepMedico" placeholder="Digite um CEP..." type="text"/>
                 </div>

                 <div class="form-group ">
                  <label class="control-label " for="cidadeMedico">
                   Cidade
                  </label>
                  <input class="form-control" id="cidadeMedico" name="cidadeMedico" placeholder="Digite uma cidade" type="text"/>
                 </div>
             
                 <div class="form-group ">
                  <label class="control-label " for="estadoMedico">
                   Estado
                  </label>
                  <select  class="form-control" id="estadoMedico" name="estadoMedico"> 
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
                  <label class="control-label " for="paisMedico">
                   Pa&iacute;s
                  </label>
                  <input class="form-control" id="paisMedico" name="paisMedico" placeholder="Digite um pa&iacute;s..." type="text"/>
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
                        <div>Desenvolvido por Ítalo Magalhães da Silva</div>
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
