

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'package:weatherapp/model/model.dart';

// class WeatherProvider extends ChangeNotifier {
//   Weather? _weather;

//   Weather? get weather => _weather;

//   Future<void> fetchWeather(String cityName, double latitude,double longitude) async {
//     final apiKey = 'b39c7464ab56df782ab4652f7da5fd99'; // Replace with your OpenWeatherMap API key
//     final apiUrl = 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey';

//     final response = await http.get(Uri.parse(apiUrl));

//     if (response.statusCode == 200) {
//       final jsonData = json.decode(response.body);
//       _weather = Weather.fromJson(jsonData);
//       notifyListeners();
//     }
    
//      else {
//       throw Exception('Failed to load weather data');
//     }
   
//   }
// }
