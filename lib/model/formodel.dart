class WeatherForecast {
  final String day;
  final String condition;
  final String temperature;

  WeatherForecast({
    required this.day,
    required this.condition,
    required this.temperature,
  });

  factory WeatherForecast.fromJson(Map<String, dynamic> json) {
    return WeatherForecast(
      day: json['dt_txt'] != null ? json['dt_txt'].toString().substring(0, 10) : '',
      condition: json['weather'][0]['description'],
      temperature: "${(json['main']['temp'] - 273.15).toStringAsFixed(1)}°C",
    );
  }
}
