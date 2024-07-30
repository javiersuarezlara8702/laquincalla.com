import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_account_copy_widget.dart' show CreateAccountCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccountCopyModel extends FlutterFlowModel<CreateAccountCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for Apellidos widget.
  FocusNode? apellidosFocusNode;
  TextEditingController? apellidosTextController;
  String? Function(BuildContext, String?)? apellidosTextControllerValidator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for confirmpass widget.
  FocusNode? confirmpassFocusNode;
  TextEditingController? confirmpassTextController;
  late bool confirmpassVisibility;
  String? Function(BuildContext, String?)? confirmpassTextControllerValidator;
  // State field(s) for Telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for Direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  // State field(s) for plasa widget.
  FocusNode? plasaFocusNode;
  TextEditingController? plasaTextController;
  String? Function(BuildContext, String?)? plasaTextControllerValidator;
  // State field(s) for epeciality widget.
  FocusNode? epecialityFocusNode;
  TextEditingController? epecialityTextController;
  String? Function(BuildContext, String?)? epecialityTextControllerValidator;
  // State field(s) for certifications widget.
  FocusNode? certificationsFocusNode;
  TextEditingController? certificationsTextController;
  String? Function(BuildContext, String?)?
      certificationsTextControllerValidator;
  // State field(s) for Salary widget.
  FocusNode? salaryFocusNode;
  TextEditingController? salaryTextController;
  String? Function(BuildContext, String?)? salaryTextControllerValidator;
  // State field(s) for workplace widget.
  FocusNode? workplaceFocusNode;
  TextEditingController? workplaceTextController;
  String? Function(BuildContext, String?)? workplaceTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmpassVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    apellidosFocusNode?.dispose();
    apellidosTextController?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmpassFocusNode?.dispose();
    confirmpassTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();

    plasaFocusNode?.dispose();
    plasaTextController?.dispose();

    epecialityFocusNode?.dispose();
    epecialityTextController?.dispose();

    certificationsFocusNode?.dispose();
    certificationsTextController?.dispose();

    salaryFocusNode?.dispose();
    salaryTextController?.dispose();

    workplaceFocusNode?.dispose();
    workplaceTextController?.dispose();
  }
}
