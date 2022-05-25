class Weather {
  Weather({
    required this.cityName,
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.windSpeed,
  });

  /*
  Weather.fromJson(Map<String, dynamic> item)
      : id = item['weather']['id'] as int,
        main = item['weather']['main'] as String,
        description = item['weather']['description'] as String,
        icon = item['weather']['icon'] as String,
        temp = item['main']['temp'] as double,
        feelsLike = item['main']['feels_like'] as double,
        tempMin = item['main']['temp_min'] as double,
        tempMax = item['main']['temp_max'] as double,
        pressure = item['main']['pressure'] as double,
        humidity = item['main']['humidity'] as double,
        windSpeed = item['wind']['speed'] as double;
   */

  final String cityName;
  final int id;
  final String main;
  final String description;
  final String icon;
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;
  final double windSpeed;

  @override
  String toString() {
    return 'Weather{id: $id, main: $main, description: $description, icon: $icon, temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, windSpeed: $windSpeed}';
  }
}
