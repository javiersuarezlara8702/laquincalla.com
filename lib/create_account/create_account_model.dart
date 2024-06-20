import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for confirmpass widget.
  FocusNode? confirmpassFocusNode;
  TextEditingController? confirmpassTextController;
  late bool confirmpassVisibility;
  String? Function(BuildContext, String?)? confirmpassTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode3;
  TextEditingController? passwordTextController3;
  String? Function(BuildContext, String?)? passwordTextController3Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode4;
  TextEditingController? passwordTextController4;
  String? Function(BuildContext, String?)? passwordTextController4Validator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmpassVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();

    confirmpassFocusNode?.dispose();
    confirmpassTextController?.dispose();

    passwordFocusNode3?.dispose();
    passwordTextController3?.dispose();

    passwordFocusNode4?.dispose();
    passwordTextController4?.dispose();
  }
}
