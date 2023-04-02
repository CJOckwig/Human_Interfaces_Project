//Customer information page
// ignore_for_file: empty_constructor_bodies

import 'dart:html';

import 'package:flutter/cupertino.dart';

// ignore: constant_identifier_names
enum store { sioux_Falls, brookings }

// ignore: empty_constructor_bodies
class Customer {
  final String first_Name;
  final String last_Name;
  final String phone_Number;
  final String email;
  final store Location;

  //var first_name;

  Customer({
    required this.first_Name,
    required this.last_Name,
    required this.phone_Number,
    required this.Location,
    this.email = "",
  });
}
