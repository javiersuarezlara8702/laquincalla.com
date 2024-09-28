import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

dynamic returnLineItem(
  String productId,
  int quantity,
  double price,
  String photourl,
  String name,
) {
  // pass two strings and return a json
  dynamic json = {};
  json['product_id'] = productId;
  json['quantity'] = quantity;
  json['price'] = price;
  json['photourl'] = photourl;
  json['name'] = name;

  return json;
}

double? increaseBasePrice(
  String price,
  String quantity,
) {
  double newPrice = double.parse(price);
  int newQuantity = int.parse(quantity);
  return newPrice * newQuantity;
}

double decreaseBasePrice(
  double price,
  int quantity,
) {
  return -(price * quantity);
}

double pricePerProduct(
  String price,
  String quantity,
) {
  double precio = double.parse(price);
  int cantidad = int.parse(quantity);

  return precio * cantidad;
}

String returnDate(String date) {
  return date.substring(0, 9);
}

String? addOrderId(String id) {
  return id + ",";
}

String? returnOrderInclude(List<String>? orderList) {
  String list = "";
  for (var i = 0; i < orderList!.length; i++) {
    list += orderList[i] + ",";
  }

  return list;
}

String? returnShippingPrice(String municipio) {
  switch (municipio) {
    case "Nuevo vedado":
      return "300";
    case "Vedado":
      return "450";
    case "Centro Habana":
      return "500";
    case "Habana Vieja":
      return "550";
    case "Santo Suarez":
      return "600";
    case "Cerro":
      return "500";
    case "Marianao":
      return "750";
    case "Marianao ( desde 100 en adelante)":
      return "850";
    case "Playa ( cercania hasta 54)":
      return "550";
    case "Playa ( cercania hata 70)":
      return "650";
    case "Playa Lejania(siboney, atabey, club habana)":
      return "1300";
    case "Playa (Santa Fe, Jaimanitas)":
      return "1600";
    case "Lawton":
      return "750";
    case "Vibora":
      return "650";
    case "Sevillano":
      return "650";
    case "10 de actubre ( rep)":
      return "600";
    case "Arrollo Naranjo ( vibora Park, Santa Amelia, Naranjito)":
      return "800";
    case "San Miguel del Padrón":
      return "900";
    case "Managua":
      return "1600";
    case "Las Guasimas":
      return "1500";
    case "Rep Electrico":
      return "1500";
    case "Calvario":
      return "1000";
    case "Arrollo Naranjo ( Los Pinos, Vieja Linda, Porvenir, Mantilla)":
      return "950";
    case "Boyero (cercania Hasta aldabo)":
      return "800";
    case "Boyero (Capdevila, Fortuna, Cujae)":
      return "1050";
    case "Boyero (Parajon, Fontanar, Mazorra , Rio Verde, Calabazar, Abel Santa Maria, Wajay, Alturas del Aeropuertpo)":
      return "1200";
    case "La lisa":
      return "1200";
    case "Habana del este ( cercania)":
      return "900";
    case "Habana del este ( lejania)":
      return "1400";
    case "Guanabacoa":
      return "1200";
    case "Regla":
      return "1200";
    case "Recogida en el Local":
      return "0";
    default:
  }
}

String convertToString(double delivery) {
  String value = delivery.toString();
  return value;
}

double newbestprice(
  String price,
  String quantity,
) {
  double new1precio = double.parse(price);
  int new1cantidad = int.parse(quantity);

  return new1precio * new1cantidad;
}
