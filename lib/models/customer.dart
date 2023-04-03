// ignore: duplicate_ignore
//Customer information page
// ignore_for_file: empty_constructor_bodies, non_constant_identifier_names, avoid_web_libraries_in_flutter

// ignore: unused_import
import 'dart:html';

// ignore: unused_import
import 'package:flutter/cupertino.dart';

// ignore: constant_identifier_names, camel_case_types
enum store { sioux_Falls, brookings }

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
