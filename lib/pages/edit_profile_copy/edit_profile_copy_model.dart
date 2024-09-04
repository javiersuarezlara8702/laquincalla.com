import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_profile_copy_widget.dart' show EditProfileCopyWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class EditProfileCopyModel extends FlutterFlowModel<EditProfileCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameTextController1;
  String? Function(BuildContext, String?)? nameTextController1Validator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameTextController2;
  String? Function(BuildContext, String?)? nameTextController2Validator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for plazaaspiration widget.
  FocusNode? plazaaspirationFocusNode;
  TextEditingController? plazaaspirationTextController;
  String? Function(BuildContext, String?)?
      plazaaspirationTextControllerValidator;
  // State field(s) for especiality widget.
  FocusNode? especialityFocusNode;
  TextEditingController? especialityTextController;
  String? Function(BuildContext, String?)? especialityTextControllerValidator;
  // State field(s) for Certification widget.
  FocusNode? certificationFocusNode;
  TextEditingController? certificationTextController;
  String? Function(BuildContext, String?)? certificationTextControllerValidator;
  // State field(s) for salry widget.
  FocusNode? salryFocusNode;
  TextEditingController? salryTextController;
  String? Function(BuildContext, String?)? salryTextControllerValidator;
  // State field(s) for workplace widget.
  FocusNode? workplaceFocusNode;
  TextEditingController? workplaceTextController;
  String? Function(BuildContext, String?)? workplaceTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<BolsaDeEmpleoRow>? returnmatching1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode1?.dispose();
    nameTextController1?.dispose();

    nameFocusNode2?.dispose();
    nameTextController2?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    plazaaspirationFocusNode?.dispose();
    plazaaspirationTextController?.dispose();

    especialityFocusNode?.dispose();
    especialityTextController?.dispose();

    certificationFocusNode?.dispose();
    certificationTextController?.dispose();

    salryFocusNode?.dispose();
    salryTextController?.dispose();

    workplaceFocusNode?.dispose();
    workplaceTextController?.dispose();
  }
}
