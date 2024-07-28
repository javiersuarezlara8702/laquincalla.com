import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _delivery = prefs.getDouble('ff_delivery') ?? _delivery;
    });
    _safeInit(() {
      _name = prefs.getString('ff_name') ?? _name;
    });
    _safeInit(() {
      _lastName = prefs.getString('ff_lastName') ?? _lastName;
    });
    _safeInit(() {
      _address = prefs.getString('ff_address') ?? _address;
    });
    _safeInit(() {
      _phone = prefs.getString('ff_phone') ?? _phone;
    });
    _safeInit(() {
      _orderIds = prefs.getStringList('ff_orderIds') ?? _orderIds;
    });
    _safeInit(() {
      _zone = prefs.getString('ff_zone') ?? _zone;
    });
    _safeInit(() {
      _emailuserid = prefs.getString('ff_emailuserid') ?? _emailuserid;
    });
    _safeInit(() {
      _photourl = prefs.getString('ff_photourl') ?? _photourl;
    });
    _safeInit(() {
      _age = prefs.getString('ff_age') ?? _age;
    });
    _safeInit(() {
      _plaza = prefs.getString('ff_plaza') ?? _plaza;
    });
    _safeInit(() {
      _especiality = prefs.getString('ff_especiality') ?? _especiality;
    });
    _safeInit(() {
      _certifications = prefs.getString('ff_certifications') ?? _certifications;
    });
    _safeInit(() {
      _salary = prefs.getString('ff_salary') ?? _salary;
    });
    _safeInit(() {
      _workplace = prefs.getString('ff_workplace') ?? _workplace;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<dynamic> _lineItems = [];
  List<dynamic> get lineItems => _lineItems;
  set lineItems(List<dynamic> value) {
    _lineItems = value;
  }

  void addToLineItems(dynamic value) {
    lineItems.add(value);
  }

  void removeFromLineItems(dynamic value) {
    lineItems.remove(value);
  }

  void removeAtIndexFromLineItems(int index) {
    lineItems.removeAt(index);
  }

  void updateLineItemsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    lineItems[index] = updateFn(_lineItems[index]);
  }

  void insertAtIndexInLineItems(int index, dynamic value) {
    lineItems.insert(index, value);
  }

  double _basePrice = 0.0;
  double get basePrice => _basePrice;
  set basePrice(double value) {
    _basePrice = value;
  }

  double _delivery = 400.0;
  double get delivery => _delivery;
  set delivery(double value) {
    _delivery = value;
    prefs.setDouble('ff_delivery', value);
  }

  double _cartTotal = 0.0;
  double get cartTotal => _cartTotal;
  set cartTotal(double value) {
    _cartTotal = value;
  }

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
    prefs.setString('ff_name', value);
  }

  String _lastName = '';
  String get lastName => _lastName;
  set lastName(String value) {
    _lastName = value;
    prefs.setString('ff_lastName', value);
  }

  String _address = '';
  String get address => _address;
  set address(String value) {
    _address = value;
    prefs.setString('ff_address', value);
  }

  String _phone = '';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
    prefs.setString('ff_phone', value);
  }

  List<String> _orderIds = [];
  List<String> get orderIds => _orderIds;
  set orderIds(List<String> value) {
    _orderIds = value;
    prefs.setStringList('ff_orderIds', value);
  }

  void addToOrderIds(String value) {
    orderIds.add(value);
    prefs.setStringList('ff_orderIds', _orderIds);
  }

  void removeFromOrderIds(String value) {
    orderIds.remove(value);
    prefs.setStringList('ff_orderIds', _orderIds);
  }

  void removeAtIndexFromOrderIds(int index) {
    orderIds.removeAt(index);
    prefs.setStringList('ff_orderIds', _orderIds);
  }

  void updateOrderIdsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    orderIds[index] = updateFn(_orderIds[index]);
    prefs.setStringList('ff_orderIds', _orderIds);
  }

  void insertAtIndexInOrderIds(int index, String value) {
    orderIds.insert(index, value);
    prefs.setStringList('ff_orderIds', _orderIds);
  }

  String _ordersArray = '';
  String get ordersArray => _ordersArray;
  set ordersArray(String value) {
    _ordersArray = value;
  }

  String _zone = '';
  String get zone => _zone;
  set zone(String value) {
    _zone = value;
    prefs.setString('ff_zone', value);
  }

  String _basePricestrig = '';
  String get basePricestrig => _basePricestrig;
  set basePricestrig(String value) {
    _basePricestrig = value;
  }

  double _deliverydoble = 0.0;
  double get deliverydoble => _deliverydoble;
  set deliverydoble(double value) {
    _deliverydoble = value;
  }

  String _emailuserid = '';
  String get emailuserid => _emailuserid;
  set emailuserid(String value) {
    _emailuserid = value;
    prefs.setString('ff_emailuserid', value);
  }

  String _userid = '';
  String get userid => _userid;
  set userid(String value) {
    _userid = value;
  }

  String _photourl = '';
  String get photourl => _photourl;
  set photourl(String value) {
    _photourl = value;
    prefs.setString('ff_photourl', value);
  }

  String _age = '';
  String get age => _age;
  set age(String value) {
    _age = value;
    prefs.setString('ff_age', value);
  }

  String _plaza = '';
  String get plaza => _plaza;
  set plaza(String value) {
    _plaza = value;
    prefs.setString('ff_plaza', value);
  }

  String _especiality = '';
  String get especiality => _especiality;
  set especiality(String value) {
    _especiality = value;
    prefs.setString('ff_especiality', value);
  }

  String _certifications = '';
  String get certifications => _certifications;
  set certifications(String value) {
    _certifications = value;
    prefs.setString('ff_certifications', value);
  }

  String _salary = '';
  String get salary => _salary;
  set salary(String value) {
    _salary = value;
    prefs.setString('ff_salary', value);
  }

  String _workplace = '';
  String get workplace => _workplace;
  set workplace(String value) {
    _workplace = value;
    prefs.setString('ff_workplace', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
