import 'package:flutter/material.dart';

class AdditionalInfoItem extends StatelessWidget {
  final IconData iconData;
  final String label;
  final String value;

  const AdditionalInfoItem({
    super.key,
    required this.iconData,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(label),
        SizedBox(height: 8.0),
        Icon(iconData, size: 32),
        SizedBox(height: 8.0),
        Text(
          value,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
