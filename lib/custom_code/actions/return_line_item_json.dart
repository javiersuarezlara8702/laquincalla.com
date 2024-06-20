// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> returnLineItemJson(
  String id,
  int quantity,
) async {
  // return a json with one string and one integer as parameters
  dynamic json = {};
  json['product_id'] = id;
  json['quantity'] = quantity;

  return json;
}
