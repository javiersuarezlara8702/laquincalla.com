import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terms_model.dart';
export 'terms_model.dart';

class TermsWidget extends StatefulWidget {
  const TermsWidget({super.key});

  @override
  State<TermsWidget> createState() => _TermsWidgetState();
}

class _TermsWidgetState extends State<TermsWidget> {
  late TermsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 70.0,
            icon: Icon(
              Icons.chevron_left_rounded,
              color: FlutterFlowTheme.of(context).secondary,
              size: 40.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Términos y condiciones',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'TÉRMINOS Y CONDICIONES DE USO DE LA TIENDA VIRTUAL CHARCUTERIA LA ESQUINA\n\nBIENVENIDO(A) A CHARCUTERIA LA ESQUINA, UNA TIENDA VIRTUAL ESPECIALIZADA EN LA VENTA DE CARNES, EMBUTIDOS Y PRODUCTOS RELACIONADOS. ANTES DE UTILIZAR NUESTROS SERVICIOS, TE PEDIMOS QUE LEAS DETENIDAMENTE LOS SIGUIENTES TÉRMINOS Y CONDICIONES DE USO. AL ACCEDER Y UTILIZAR NUESTRO SITIO WEB Y APLICACION MOVIL, ESTÁS ACEPTANDO CUMPLIR CON ESTOS TÉRMINOS Y CONDICIONES EN SU TOTALIDAD.\n\nUSO DEL SITIO WEB Y APLICACION MOVIL\n1.1. EL ACCESO Y USO DE LA TIENDA VIRTUAL CHARCUTERIA LA ESQUINA ESTÁN DESTINADOS ÚNICAMENTE A PERSONAS MAYORES DE EDAD. SI ERES MENOR DE EDAD, DEBES CONTAR CON EL CONSENTIMIENTO Y SUPERVISIÓN DE TUS PADRES O TUTORES LEGALES.\n1.2. TE COMPROMETES A UTILIZAR NUESTRO SITIO WEB Y APLICACION MOVIL Y SUS SERVICIOS DE MANERA LEGAL, ÉTICA Y CONFORME A ESTOS TÉRMINOS Y CONDICIONES.\n1.3. NO PODRÁS UTILIZAR NUESTRA TIENDA VIRTUAL CON FINES FRAUDULENTOS O ILEGALES, NI PARA ENVIAR CONTENIDO OFENSIVO, DIFAMATORIO, OBSCENO O QUE VIOLE LOS DERECHOS DE TERCEROS.\n\nINFORMACIÓN DEL USUARIO\n2.1. PARA REALIZAR COMPRAS EN CHARCUTERIA LA ESQUINA, DEBERÁS PROPORCIONAR INFORMACIÓN PRECISA, ACTUALIZADA Y COMPLETA AL MOMENTO DE REGISTRARTE Y HACER TU PEDIDO.\n2.2. ASUMES LA RESPONSABILIDAD DE MANTENER TU INFORMACIÓN DE CUENTA SEGURA Y CONFIDENCIAL, Y ACEPTAS NOTIFICARNOS DE INMEDIATO CUALQUIER USO NO AUTORIZADO DE TU CUENTA.\n2.3. CHARCUTERIA LA ESQUINA SE RESERVA EL DERECHO DE SUSPENDER O CANCELAR TU CUENTA SI SE DETECTA ALGÚN INCUMPLIMIENTO O SOSPECHA DE ACTIVIDAD FRAUDULENTA.\n\nPRODUCTOS Y PRECIOS\n3.1. CHARCUTERIA LA ESQUINA SE ESFUERZA POR BRINDAR DESCRIPCIONES PRECISAS Y FOTOGRAFÍAS DE LOS PRODUCTOS OFRECIDOS EN LA TIENDA VIRTUAL. SIN EMBARGO, NO PODEMOS GARANTIZAR QUE LOS COLORES Y DETALLES MOSTRADOS EN EL SITIO WEB SEAN EXACTAMENTE IGUALES A LOS PRODUCTOS REALES DEBIDO A LAS DIFERENCIAS EN LAS CONFIGURACIONES DE VISUALIZACIÓN.\n3.2. LOS PRECIOS DE LOS PRODUCTOS ESTÁN SUJETOS A CAMBIOS SIN PREVIO AVISO. SIN EMBARGO, UNA VEZ QUE HAYAS REALIZADO UN PEDIDO, EL PRECIO NO SE MODIFICARÁ, A MENOS QUE EXISTA UN ERROR EVIDENTE O PROBLEMAS TÉCNICOS EN EL SITIO WEB O LA APLICACION MOVIL.\n3.3. CHARCUTERIA LA ESQUINA SE RESERVA EL DERECHO DE LIMITAR LA CANTIDAD DE PRODUCTOS DISPONIBLES PARA LA VENTA Y RECHAZAR O CANCELAR CUALQUIER PEDIDO EN CASO DE SOSPECHA DE FRAUDE O INCUMPLIMIENTO DE ESTOS TÉRMINOS Y CONDICIONES.\n\nPAGOS Y FACTURACIÓN\n4.1. PARA REALIZAR UNA COMPRA EN CHARCUTERIA LA ESQUINA, DEBERÁS PROPORCIONAR INFORMACIÓN DE PAGO VÁLIDA Y AUTORIZAR EL CARGO CORRESPONDIENTE.\n4.2. NOSOTROS GARANTIZAMOS QUE LOS DATOS DE PAGO SERÁN TRATADOS DE MANERA SEGURA Y CONFIDENCIAL. SIN EMBARGO, NO NOS HACEMOS RESPONSABLES DE CUALQUIER DAÑO O PÉRDIDA CAUSADOS POR EL USO INDEBIDO O NO AUTORIZADO DE ESTA INFORMACIÓN POR PARTE DE TERCEROS.\n4.3. AL FINALIZAR TU COMPRA, RECIBIRÁS UN COMPROBANTE DE PAGO Y UNA FACTURA ELECTRÓNICA QUE PODRÁS DESCARGAR Y CONSERVAR PARA TUS REGISTROS.\n\nENVÍOS Y ENTREGAS\n5.1. CHARCUTERIA LA ESQUINA REALIZARÁ SUS MEJORES ESFUERZOS PARA PROCESAR Y ENVIAR TUS PEDIDOS EN EL MENOR TIEMPO POSIBLE. SIN EMBARGO, LOS PLAZOS DE ENTREGA PUEDEN VARIAR DEPENDIENDO DE LA UBICACIÓN Y OTROS FACTORES AJENOS.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
