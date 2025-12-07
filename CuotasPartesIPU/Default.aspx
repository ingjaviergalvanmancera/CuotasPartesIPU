<%@  Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CuotasPartesIPU._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Cuotas Partes IPU | Alcaldía de Bucaramanga</title>

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet" />

    <!-- Icono -->
    <link href="../images/icon.jpg" rel="icon" />
    <link href="../images/icon.jpg" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet" />

    <!-- Bootstrap CSS (una sola referencia) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />

    <!-- GOV.CO CSS local -->
    <link href="../vendors/cssGovCo.css" rel="stylesheet" />

    <!-- estilos específicos -->
    <link href="../../src/general/linea-avance.css" rel="stylesheet" type="text/css" />
    <link href="../../src/general/carga-de-archivo.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="https://checkout.wompi.co/widget.js"></script>

    <style>
        /* Ocultar todos los pasos por defecto */
        .body-linea-avance-govco {
            display: none;
            width: 100%;
        }

            .body-linea-avance-govco.active-linea-avance-govco {
                display: block;
            }

            .body-linea-avance-govco .contents-linea-avance-govco {
                min-height: 480px;
                box-sizing: border-box;
            }

        .all-input-carga-de-archivo-govco {
            width: 70% !important;
        }

        .entradas-de-texto-govco textarea,
        .entradas-de-texto-govco input {
            width: 100%;
            min-height: 42px;
            padding: 8px 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }
    </style>
</head>

<body id="body" class="">
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg fixed-top navbar-govco navbar-expanded" id="nav-header">
                <div class="navbar-container container pl-2">
                    <div class="navbar-logo float-left">
                        <a class="navbar-brand" href="https://www.gov.co/">
                            <img src="https://cdn.www.gov.co/assets/images/logo.png" height="30" alt="Logo Gov.co" />
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapsible" aria-controls="navbarCollapsible" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse float-right">
                        <div class="nav-primary mx-auto">
                            <ul class="navbar-nav ml-auto nav-items nav-items-desktop">
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            <section class="container">
                <div class="row" style="padding-top: 6%;">
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="container-fluid">
                            <img src="../images/escudo_Nom.png" class="img-fluid float-left mt-2" style="width: 25%; height: 25%" />
                        </div>
                    </div>
                </div>
            </section>

            <main class="container animated fadeInLeft">
                <div class="container"></div>

                <div class="Container">
                    <nav class="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="https://impuestos.bucaramanga.gov.co"><span class="breadcrumb-home">Inicio</span></a>
                            </li>
                            <li class="breadcrumb-item">
                                <div class="breadcrumb">
                                    <span class="govco-icon govco-icon-shortr-arrow mx-1"></span>
                                    <span class="breadcrumb-text item-link">Cuotas Partes Impuesto Predial Unificado (IPU) </span>
                                </div>
                            </li>
                        </ol>
                    </nav>

                    <!-- page content -->
                    <div class="right_col" role="main">
                        <div class="">
                            <div class="clearfix"></div>

                            <!-- Conservé tus labels de servidor para que code-behind funcione -->
                            <asp:Label ID="lblFecHor" runat="server" />

                            <div class="row">
                                <div class="col-lg-12" id="dvError" runat="server" visible="false" style="text-align: center; background-color: #d11f3e; font-family: Montserrat,sans-serif; font-size: 1.125rem; color: #d11f3e;">
                                    <asp:Label ID="lblError" CssClass="text-white" runat="server" />
                                </div>

                                <div class="col-lg-12" id="dvAlerta" runat="server" visible="false" style="text-align: center; background-color: #d11f3e; font-family: Montserrat,sans-serif; font-size: 1.125rem; color: #ffffff;">
                                    <asp:Label ID="lblAlerta" CssClass="text-white" runat="server" />
                                </div>
                            </div>

                            <!-- Línea de avance de interacción horizontal -->
                            <div class="row">
                                <div class="row m-0">
                                    <div class="col-lg-12">
                                        <div class="card">
                                            <div class="card-header">
                                                Registre la información requerida para la cuota parte solicitada. Verifique que los datos ingresados sean correctos antes de continuar, de esta manera se asegura una gestión más ágil y sin contratiempos.
                                            </div>
                                            <div class="card-body">
                                                <div class="container-example-linea-avance-govco">
                                                    <div class="linea-avance-govco ih-linea-avance-govco" id="lineaAvance3">
                                                        <div class="progress">
                                                            <div class="progress-bar" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                        <div class="items-header-linea-avance-govco">
                                                            <div class="header-linea-avance-govco active-linea-avance-govco">
                                                                <button class="indicator-linea-avance-govco" type="button" data-la-target="#itemLineaAvance31" percentage="15"><span>1</span></button>
                                                                <span class="title-linea-avance-govco">Inicio</span>
                                                            </div>
                                                            <div class="header-linea-avance-govco">
                                                                <button class="indicator-linea-avance-govco" type="button" data-la-target="#itemLineaAvance32" percentage="50"><span>2</span></button>
                                                                <span class="title-linea-avance-govco">Subir archivos</span>
                                                            </div>
                                                            <div class="header-linea-avance-govco">
                                                                <button class="indicator-linea-avance-govco" type="button" data-la-target="#itemLineaAvance34" percentage="100"><span>3</span></button>
                                                                <span class="title-linea-avance-govco">Generación solicitud</span>
                                                            </div>
                                                        </div>

                                                        <div id="itemLineaAvance31" class="body-linea-avance-govco active-linea-avance-govco" data-la-parent="#lineaAvance3">
                                                            <div class="contents-linea-avance-govco">
                                                                <div class="contents-example-linea-avance-govco">
                                                                    <h5>Datos de contacto</h5>

                                                                    <div class="entradas-de-texto-govco">
                                                                        <label for="ddlTipoDocumento" class="mb-2">Tipo de documento</label>
                                                                        <asp:DropDownList ID="ddlTipoDocumento"  runat="server" CssClass="form-control govco-form-control>
                                                                            <asp:ListItem Text="Cédula de ciudadanía" Value="CC"></asp:ListItem>
                                                                            <asp:ListItem Text="Tarjeta de identidad" Value="TI"></asp:ListItem>
                                                                            <asp:ListItem Text="NIT" Value="NIT"></asp:ListItem>
                                                                            <asp:ListItem Text="Pasaporte" Value="PA"></asp:ListItem>
                                                                            <asp:ListItem Text="Cédula de extranjería" Value="CE"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                        dd

                                                                    </div>
                                                                    <div class="entradas-de-texto-govco">
                                                                        <label for="identifiacion">NIT/Cédula ciudadanía</label>
                                                                        <asp:TextBox ID="txbDocumento" runat="server" placeholder="890200928" autocomplete="off"></asp:TextBox>
                                                                    </div>
                                                                    <div class="entradas-de-texto-govco">
                                                                        <label for="nombre">Nombre*</label>
                                                                        <asp:TextBox ID="txbNombres" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                                                                    </div>
                                                                    <div class="entradas-de-texto-govco">
                                                                        <label for="apellido">Apelldio*</label>
                                                                        <asp:TextBox ID="txbApellidos" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                                                                    </div>
                                                                    <div class="entradas-de-texto-govco">
                                                                        <label for="correo">Correo electrónico*</label>
                                                                        <asp:TextBox ID="txbCorreo" runat="server" placeholder="juan.perez@correo.com" CssClass="form-control" autocomplete="off"></asp:TextBox>
                                                                    </div>
                                                                    <div class="entradas-de-texto-govco">
                                                                        <label for="peticion">Petición</label>
                                                                        <textarea id="peticion" placeholder="Escriba aquí su petición" rows="4" class="form-control-govco"></textarea>
                                                                    </div>


                                                                    <div class="d-flex justify-content-end">
                                                                        <button type="button" class="btn-govco fill-btn-govco" style="width: 165px; height: 42px; margin-top: 23px;" onclick="nextItemAdvanceLineIHorizonal(event)">Continuar</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div id="itemLineaAvance32" class="body-linea-avance-govco" data-la-parent="#lineaAvance3">
                                                            <div class="contents-linea-avance-govco">
                                                                <div class="contents-example-linea-avance-govco">
                                                                    <h5>Subir documentación</h5>

                                                                    <div class="container-carga-de-archivo-govco">
                                                                        <!-- documento 1 -->
                                                                        <div class="loader-carga-de-archivo-govco">
                                                                            <div class="all-input-carga-de-archivo-govco">
                                                                                <input type="file" name="inputFile1" id="inputFile1" class="input-carga-de-archivo-govco active" multiple="" />
                                                                                <label class="label-carga-de-archivo-govco">1. Certificado de Libertad y Tradición del Predio*</label>
                                                                                <label class="container-input-carga-de-archivo-govco">
                                                                                    <span class="button-file-carga-de-archivo-govco">Seleccionar archivo</span>
                                                                                    <span class="file-name-carga-de-archivo-govco">Sin archivo seleccionado</span>
                                                                                </label>
                                                                                <span class="text-validation-carga-de-archivo-govco">archivos de tipo Pdf. Peso máximo: 2 MB</span>
                                                                            </div>
                                                                            <div class="load-button-carga-de-archivo-govco">
                                                                                <div class="load-carga-de-archivo-govco">
                                                                                    <div class="spinner-indicador-de-carga-govco" style="width: 32px; height: 32px; border-width: 6px;" role="status">
                                                                                        <span class="visually-hidden">Cargando...</span>
                                                                                    </div>
                                                                                </div>
                                                                                <button class="button-loader-carga-de-archivo-govco" disabled="disabled">Cargar archivo</button>
                                                                            </div>
                                                                        </div>

                                                                        <!-- documento 2 -->
                                                                        <!-- documento 1 -->
                                                                        <div class="loader-carga-de-archivo-govco">
                                                                            <div class="all-input-carga-de-archivo-govco">
                                                                                <input type="file" name="inputFile1" id="inputFile2" class="input-carga-de-archivo-govco active" multiple="" />
                                                                                <label class="label-carga-de-archivo-govco">2. Documento de identidad*</label>
                                                                                <label class="container-input-carga-de-archivo-govco">
                                                                                    <span class="button-file-carga-de-archivo-govco">Seleccionar archivo</span>
                                                                                    <span class="file-name-carga-de-archivo-govco">Sin archivo seleccionado</span>
                                                                                </label>
                                                                                <span class="text-validation-carga-de-archivo-govco">archivos de tipo Pdf. Peso máximo: 2 MB</span>
                                                                            </div>
                                                                            <div class="load-button-carga-de-archivo-govco">
                                                                                <div class="load-carga-de-archivo-govco">
                                                                                    <div class="spinner-indicador-de-carga-govco" style="width: 32px; height: 32px; border-width: 6px;" role="status">
                                                                                        <span class="visually-hidden">Cargando...</span>
                                                                                    </div>
                                                                                </div>
                                                                                <button class="button-loader-carga-de-archivo-govco" disabled>Cargar archivo</button>
                                                                            </div>
                                                                        </div>

                                                                    </div>

                                                                    <div class="d-flex justify-content-end">
                                                                        <button type="button" class="btn-govco fill-btn-govco" style="width: 165px; height: 42px; margin-top: 16px;" onclick="nextItemAdvanceLineIHorizonal(event)">Continuar</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div id="itemLineaAvance34" class="body-linea-avance-govco" data-la-parent="#lineaAvance3">
                                                            <div class="contents-linea-avance-govco">
                                                                <div class="contents-example-linea-avance-govco">
                                                                    <h5>Se generó la solicitud No. 20250915000001</h5>
                                                                    <p>
                                                                        Su trámite está en proceso de revisión.
                                                                        Hemos enviado un correo con el detalle de su solicitud y el número de radicado para que lo conserve.
                                                                        Es muy importante contar con esta información, ya que nos permitirá contactarle de forma rápida y segura.
                                                                    </p>
                                                                    <div class="d-flex justify-content-end">
                                                                        <button type="button" class="btn-govco fill-btn-govco" style="width: 165px; height: 42px; margin-top: 85px;" onclick="window.location.href='ConsultarRadicado.aspx'">Finalizar</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <!-- Fin Línea de avance -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Fin Contenido -->
                        </div>
                    </div>
                </div>

                <!-- objeto lateral derecho -->
                <div class="block block--gov-accessibility">
                    <div class="block-options navbar-expanded">
                        <a class="contrast-ref">
                            <span class="govco-icon govco-icon-contrast-n"></span>
                            <label>Contraste </label>
                        </a>
                        <a class="min-fontsize">
                            <span class="govco-icon govco-icon-less-size-n"></span>
                            <label class="align-middle">Reducir letra </label>
                        </a>
                        <a class="max-fontsize">
                            <span class="govco-icon govco-icon-more-size-n"></span>
                            <label class="align-middle">Aumentar letra </label>
                        </a>
                        <a target="_blank" href="https://centroderelevo.gov.co/632/w3-channel.html">
                            <span class="govco-icon govco-icon-relief-n"></span>
                            <label class="align-middle">Centro de relevo </label>
                        </a>
                    </div>
                </div>
            </main>

            <footer>
                <div class="footer page__footer footer-white footer-blue">
                    <div class="container">
                        <div class="footer-container" id="footer-container">
                            <!-- footer content (se mantiene igual a tu original) -->
                            <div class="nav-footer icon-white nav-pills nav-pills-icons icon-white d-flex justify-content-center bd-highlight">
                                <div class="item-footer border-right col-md-2">
                                    <div class="d-flex justify-content-center">
                                        <a class="navbar-brand" href="https://www.gov.co/" style="padding: 0!important;">
                                            <img src="https://cdn.www.gov.co/assets/images/logo.png" height="40" alt="Logo Gov.co" />
                                        </a>
                                    </div>
                                    Generación Recibo de pago
                                    <div class="d-flex justify-content-center mt-3">
                                        <a class="navbar-brand" href="https://www.gov.co/" style="padding: 0!important;">
                                            <img src="https://www.gov.co/uploads/23c08fdb-7970-420c-a556-c3af1802ef58.svg" height="100px" alt="Logo Gov.co" />
                                        </a>
                                    </div>
                                </div>

                                <div class="item-footer col-md-6 border-right">
                                    <div class="px-3">
                                        <p class="font-weight-bold">Alcaldía de Bucaramanga</p>
                                        <p>Nit:890 201 222-0</p>
                                        <p>Dirección: Fase I: Calle 35 # 10-43.</p>
                                        <p>Fase II: Carrera 11 # 34-52.</p>
                                        <p>Código Postal: 680006. Código Dane: 68001.</p>
                                        <p>Horario de Atención: Lunes a viernes de 6:00 a.m. a 02:00 p.m. jornada contínua</p>
                                    </div>
                                </div>

                                <div class="item-footer col-md-4">
                                    <div class="px-3">
                                        <p class="font-weight-bold">Contacto</p>
                                        <p>Conmutador: (60+7) 633 70 00</p>
                                        <p>Atención a la Ciudadanía: (60+7) 652 55 55</p>
                                        <p>Fax: (60+7) 652 17 77</p>
                                        <p>Email: contactenos@bucaramanga.gov.co</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </footer>

        </div>
    </form>

    <!-- SCRIPTS: jQuery -> Popper -> Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>

    <!-- Plugins locales (mantener las rutas relativas que usabas) -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <script src="vendors/nprogress/nprogress.js"></script>
    <script src="vendors/iCheck/icheck.min.js"></script>
    <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="build/js/custom.min.js"></script>

    <!-- utils.govco -->
    <script src="https://cdn.www.gov.co/v3/assets/js/utils.js"></script>

    <script>
        $(".min-fontsize").click(function () {
            var fuente = $("#body").css("font-size");
            var fuente_suma = parseInt(fuente) - 2;
            var fuente_px = fuente_suma + 'px';
            if (fuente_suma <= 12) {
                $("*").css("font-size", '12px');
            } else {
                $("*").css("font-size", fuente_px);
            }
        });
        $(".max-fontsize").click(function () {
            var fuente = $("#body").css("font-size");
            var fuente_suma = parseInt(fuente) + 2;
            var fuente_px = fuente_suma + 'px';
            if (fuente_suma >= 22) {
                $("*").css("font-size", '22px');
            } else {
                $("*").css("font-size", fuente_px);
            }
        });

        $(".contrast-ref").click(function () {
            var clase = $('#body').attr("class");
            var color = '#3366CC';
            if (clase == 'all') {
                $('#body').removeClass("all");
                $('#nav-header').css('background-color', color);
            } else {
                $('#body').addClass("all");
                $('#nav-header').css('background-color', 'black');
            }
        });

        $('#btn-util').click(function () {
            $("#div-area-util").fadeToggle('slow', 'swing');
            $('#text-area-util').focus();
        });
        $('#btn-sugerencias').click(function () {
            $("#text-button").fadeToggle('slow', 'swing');
            $('#text-area').focus();
        });
    </script>

    <!-- tus scripts locales -->
    <script src="../../src/general/linea-avance.js"></script>
    <script src="../../src/general/carga-de-archivo.js"></script>
</body>
</html>
