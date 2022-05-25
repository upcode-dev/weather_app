import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weather_app2/models/city.dart';
import 'package:weather_app2/models/weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<City> _cities = <City>[];
  final List<Weather> _weather = <Weather>[];
  bool _isLoading = false;
  bool _canSearch = true;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    //_getCities();
    super.initState();
  }

  Future<void> _getCities(String cityName) async {
    setState(() {
      _canSearch = false;
      _isLoading = true;
    });

    final Response response = await get(
      Uri.parse(
        'http://api.openweathermap.org/geo/1.0/direct?q=$cityName&limit=5&appid=efc2113600604544cf7407bcd6ff4d8e',
      ),
    );

    final List<dynamic> result = jsonDecode(response.body) as List<dynamic>;
    final List<dynamic> cities = result;

    final List<City> data = <City>[];
    for (int i = 0; i < cities.length; i++) {
      final Map<String, dynamic> item = cities[i] as Map<String, dynamic>;

      data.add(City.fromJson(item));
    }

    setState(() {
      _cities.addAll(data);
      _isLoading = false;
    });
  }

  int findWeatherUsingIndexWhere(List<Weather> weather, String cityName) {
    final int index = weather.indexWhere((Weather element) => element.cityName == cityName);
    if (index >= 0) {
      return index;
    } else {
      return -1;
    }
  }

  Future<void> _getWeather(double lat, double lon, String name) async {
    final int indexOfWeather = findWeatherUsingIndexWhere(_weather, name);
    if (indexOfWeather == -1) {
      final Response response = await get(
        Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=efc2113600604544cf7407bcd6ff4d8e',
        ),
      );

      final Map<String, dynamic> result = jsonDecode(response.body) as Map<String, dynamic>;

      final String cityName = name;
      final int id = result['weather'][0]['id'] as int;
      final String main = result['weather'][0]['main'] as String;
      final String description = result['weather'][0]['description'] as String;
      final String icon = result['weather'][0]['icon'] as String;
      final double temp = result['main']['temp'] as double;
      final double feelsLike = result['main']['feels_like'] as double;
      final double tempMin = result['main']['temp_min'] as double;
      final double tempMax = result['main']['temp_max'] as double;
      final int pressure = result['main']['pressure'] as int;
      final int humidity = result['main']['humidity'] as int;
      final double windSpeed = result['wind']['speed'] as double;

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

      setState(() {
        _weather.add(weather);
        showDialog<AlertDialog>(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Weather'),
              content: Column(
                children: <Widget>[
                  Text('ID: ${weather.id}'),
                  Text('main: ${weather.main}'),
                  Text('name: ${weather.description}'),
                  Text('icon: ${weather.icon}'),
                  Text('temp: ${weather.temp}'),
                  Text('feelsLike: ${weather.feelsLike}'),
                  Text('tempMin: ${weather.tempMin}'),
                  Text('tempMax: ${weather.tempMax}'),
                  Text('pressure: ${weather.pressure}'),
                  Text('humidity: ${weather.humidity}'),
                  Text('windSpeed: ${weather.windSpeed}'),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      });
    } else {
      setState(() {
        showDialog<AlertDialog>(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Weather'),
              content: Column(
                children: <Widget>[
                  Text('ID: ${_weather[indexOfWeather].id}'),
                  Text('main: ${_weather[indexOfWeather].main}'),
                  Text('name: ${_weather[indexOfWeather].description}'),
                  Text('icon: ${_weather[indexOfWeather].icon}'),
                  Text('temp: ${_weather[indexOfWeather].temp}'),
                  Text('feelsLike: ${_weather[indexOfWeather].feelsLike}'),
                  Text('tempMin: ${_weather[indexOfWeather].tempMin}'),
                  Text('tempMax: ${_weather[indexOfWeather].tempMax}'),
                  Text('pressure: ${_weather[indexOfWeather].pressure}'),
                  Text('humidity: ${_weather[indexOfWeather].humidity}'),
                  Text('windSpeed: ${_weather[indexOfWeather].windSpeed}'),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          if (_canSearch) {
            return Column(
              children: <Widget>[
                TextFormField(
                  controller: _controller,
                  decoration: const InputDecoration(border: OutlineInputBorder()),
                ),
                IconButton(
                  onPressed: () {
                    _getCities(_controller.text);
                  },
                  icon: const Icon(Icons.search),
                ),
              ],
            );
          }
          if (_isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Column(
            children: <Widget>[
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              IconButton(
                onPressed: () {
                  _getCities(_controller.text);
                },
                icon: const Icon(Icons.search),
              ),
              Expanded(
                child: ListView.builder(
                  //shrinkWrap: true,
                  itemCount: _cities.length,
                  itemBuilder: (BuildContext context, int index) {
                    final City city = _cities[index];

                    return GestureDetector(
                      onTap: () {
                        _getWeather(city.lat, city.lon, city.name);
                      },
                      child: Column(
                        children: <Widget>[
                          Text('City name: ${city.name}'),
                          Text('Country code: ${city.country}'),
                          Text('latitude: ${city.lat}'),
                          Text('longitude: ${city.lon}'),
                          const SizedBox(height: 10),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
