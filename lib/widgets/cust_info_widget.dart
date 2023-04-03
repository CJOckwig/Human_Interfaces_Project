import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TwoOptionComboBox extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _TwoOptionComboBoxState createState() => _TwoOptionComboBoxState();
}

class _TwoOptionComboBoxState extends State<TwoOptionComboBox> {
  String _selectedOption = 'Brookings';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      onChanged: (String? newValue) {
        setState(() {
          _selectedOption = newValue!;
        });
      },
      items: <String>['Brookings', 'Sioux Falls'].map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
    );
  }
}
