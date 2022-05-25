import 'dart:convert';
import 'package:http/http.dart';
import 'package:weather_app2/models/city.dart';
import 'package:weather_app2/models/weather.dart';

class WeatherApi {
  const WeatherApi(this._client);

  final Client _client;

  Future<List<City>> getCities(String cityName) async {
    final Response response = await _client.get(
      Uri.parse(
        'http://api.openweathermap.org/geo/1.0/direct?q=$cityName&limit=1&appid=efc2113600604544cf7407bcd6ff4d8e',
      ),
    );

    final List<dynamic> result = jsonDecode(response.body) as List<dynamic>;
    final List<dynamic> cities = result;

    final List<City> list = <City>[];
    for (int i = 0; i < cities.length; i++) {
      final Map<String, dynamic> item = cities[i] as Map<String, dynamic>;
      list.add(City.fromJson(item));
    }

    return list;
  }

  Future<List<Weather>> getWeather(double lat, double lon, String name) async {
    final Response response = await get(
      Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=efc2113600604544cf7407bcd6ff4d8e',
      ),
    );

    final Map<String, dynamic> result = jsonDecode(response.body) as Map<String, dynamic>;
    final String cityName = name;
    // ignore: avoid_dynamic_calls
    final int id = result['weather'][0]['id'] as int;

    // ignore: avoid_dynamic_calls
    final String main = result['weather'][0]['main'] as String;
    // ignore: avoid_dynamic_calls
    final String description = result['weather'][0]['description'] as String;
    // ignore: avoid_dynamic_calls
    final String icon = result['weather'][0]['icon'] as String;

    // ignore: avoid_dynamic_calls
    final double tempDouble = result['main']['temp'] - 273.15 as double;
    final int temp = tempDouble.round();

    // ignore: avoid_dynamic_calls
    final double feelsLikeDouble = result['main']['feels_like'] - 273.15 as double;
    final int feelsLike = feelsLikeDouble.round();

    // ignore: avoid_dynamic_calls
    final double tempMinDouble = result['main']['temp_min'] - 273.15 as double;
    final int tempMin = tempMinDouble.round();

    // ignore: avoid_dynamic_calls
    final double tempMaxDouble = result['main']['temp_max'] - 273.15 as double;
    final int tempMax = tempMaxDouble.round();

    // ignore: avoid_dynamic_calls
    final int pressure = result['main']['pressure'] as int;

    // ignore: avoid_dynamic_calls
    final int humidity = result['main']['humidity'] as int;

    // ignore: avoid_dynamic_calls
    final double windSpeedDouble = result['wind']['speed'] as double;
    final int windSpeed = windSpeedDouble.round();

    // final int id = result['weather'][0]['id'] as int; // Avoid method calls or property accesses on a "dynamic" target
    /*
    final int id = ((result['weather'] as Map<String, dynamic>)[0] as Map<String, dynamic>)['id'] as int;

    final String main = ((result['weather'] as Map<String, dynamic>)[0] as Map<String, dynamic>)['main'] as String;
    final String description =
        ((result['weather'] as Map<String, dynamic>)[0] as Map<String, dynamic>)['description'] as String;
    final String icon = ((result['weather'] as Map<String, dynamic>)[0] as Map<String, dynamic>)['icon'] as String;

    double tempDouble = ((result['main'] as Map<String, dynamic>)['temp'] as Map<String, dynamic>) as double;
    tempDouble = tempDouble - 273.15;
    final int temp = tempDouble.round();

    double feelsLikeDouble = ((result['main'] as Map<String, dynamic>)['feels_like'] as Map<String, dynamic>) as double;
    feelsLikeDouble = feelsLikeDouble - 273.15;
    final int feelsLike = feelsLikeDouble.round();

    double tempMinDouble = ((result['main'] as Map<String, dynamic>)['temp_min'] as Map<String, dynamic>) as double;
    tempMinDouble = tempMinDouble - 273.15;
    final int tempMin = tempMinDouble.round();

    double tempMaxDouble = ((result['main'] as Map<String, dynamic>)['temp_max'] as Map<String, dynamic>) as double;
    tempMaxDouble = tempMaxDouble - 273.15;
    final int tempMax = tempMaxDouble.round();

    final int pressure = (result['main'] as Map<String, dynamic>)['pressure'] as int;
    final int humidity = (result['main'] as Map<String, dynamic>)['humidity'] as int;

    final double windSpeedDouble = (result['wind'] as Map<String, dynamic>)['speed'] as double;
    final int windSpeed = windSpeedDouble.round();
     */

    final Weather weather = Weather(
      cityName: cityName,
      id: id,
      main: main,
      description: description,
      icon: icon,
      temp: temp,
      feelsLike: feelsLike,
      tempMin: tempMin,
      tempMax: tempMax,
      pressure: pressure,
      humidity: humidity,
      windSpeed: windSpeed,
    );

    /*
    final List<Weather> list = <Weather>[];
    list.add(weather);
     */
    final List<Weather> list = <Weather>[weather];

    return list;
  }

  Future<List<int>> convertUnits() async {
    return <int>[];
  }
}
