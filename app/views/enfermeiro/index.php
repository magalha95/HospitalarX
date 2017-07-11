<!DOCTYPE html>
<html lang="pt-Br">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="Ítalo Magalhães da Silva" content="">

        <title>Enfermeiro</title>

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


        <!-- Template js -->
        <script src="/HospitalarX/js/jquery-2.1.1.min.js"></script>
        <script src="/HospitalarX/bootstrap/js/bootstrap.min.js"></script>
        <script src="/HospitalarX/js/jquery.appear.js"></script>
        <!-- <script src="/HospitalarX/js/contact_me.js"></script>? -->
        <!-- <script src="/HospitalarX/js/jqBootstrapValidation.js"></script> -->
        <script src="/HospitalarX/js/modernizr.custom.js"></script>
        <script src="/HospitalarX/js/script.js"></script>

    </head>

    <body>

        <!-- Start Logo Section -->
        <section id="logo-section" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo text-center">
                            <h1>Enfermeiro</h1>
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
                    
                        <div class="col-md-12 col-sm-6 col-xs-12">
                            <h2>Você irá trabalhar na cirurgia:</h2>
                        </div><!-- /.col-md-2 -->
                        <div class="col-md-12 col-sm-6 col-xs-12">
                              <?php 
                                include ("../../conexao.php");
                                $sql_code = mysql_query();
                                $result = executar($sql_code);
                                echo "<table>";
                                while($exibe = mysql_fetch_assoc($sql)){
                                  echo "<tr><td>Nome:</td>";
                                  echo "<td>".$exibe["Nome"]."</td></tr>";
                                }
                                echo "</table>";
                              ?>
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

    </body>

</html>
