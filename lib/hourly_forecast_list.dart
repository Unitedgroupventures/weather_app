import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/hourly_forecast_item.dart';

class HourlyForecastList extends StatelessWidget {
  const HourlyForecastList({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          final hourlyForecast = data['list'][index + 1];
          final hourlyTemp = hourlyForecast['main']['temp'];
          // final hourlyTime = hourlyForecast['dt'];
          final hourlySky = data['list'][index + 1]['weather'][0]['main'];

          final time = DateTime.parse(hourlyForecast['dt_txt']);
          return HourlyForecastItem(
            iconData: hourlySky == 'Clouds' || hourlySky == 'Rain'
                ? Icons.cloud
                : Icons.sunny,
            time: DateFormat.Hm().format(time),
            temperature: '${(hourlyTemp - 273.15).toStringAsFixed(1)} °C',
          );
        },
      ),
    );
  }
}
