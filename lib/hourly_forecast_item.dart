import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final IconData iconData;
  final String time;
  final String temperature;

  const HourlyForecastItem({
    super.key,
    required this.iconData,
    required this.time,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      child: Container(
        width: 100.0,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: <Widget>[
            Text(
              time,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Icon(iconData, size: 32),
            SizedBox(height: 8.0),
            Text(temperature),
          ],
        ),
      ),
    );
  }
}
