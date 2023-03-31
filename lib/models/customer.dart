//Customer information page
// ignore_for_file: empty_constructor_bodies

import 'dart:html';

import 'package:flutter/cupertino.dart';

enum store { sioux_Falls, brookings }

// ignore: empty_constructor_bodies, empty_constructor_bodies
class Customer {
  late String first_Name;
  late String last_Name;
  late String phone_Number;
  late String email;
  late store Location;

  var first_name;

  Customer({
    required this.first_Name,
    required this.last_Name,
    required this.phone_Number,
    required this.Location,
    this.email = "",
  });
}
