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
  bool _showWeather = false;
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

    //print(response.body);
    final List<dynamic> result = jsonDecode(response.body) as List<dynamic>;
    final List<dynamic> cities = result;
    //print(cities);

    final List<City> data = <City>[];
    for (int i = 0; i < cities.length; i++) {
      final Map<String, dynamic> item = cities[i] as Map<String, dynamic>;

      data.add(City.fromJson(item));
    }
    //print(data);

    setState(() {
      _cities.addAll(data);
      _isLoading = false;
      //_canSearch = true;
    });
  }

  Future<void> _getWeather(double lat, double lon) async {
    final Response response = await get(
      Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=efc2113600604544cf7407bcd6ff4d8e',
      ),
    );

    //print('${response.body}\n');

    final Map<String, dynamic> result = jsonDecode(response.body) as Map<String, dynamic>;

    final int id = result['weather'][0]['id'] as int;
    //print(id);
    //print(result['weather'][0]['id']);
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

    final Weather weather = Weather(id: id, main: main, description: description, icon: icon, temp: temp, feelsLike: feelsLike, tempMin: tempMin, tempMax: tempMax, pressure: pressure, humidity: humidity, windSpeed: windSpeed);
    //print(weather);

    setState(() {
      _weather.add(weather);
      _showWeather = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          if (_showWeather) {
            return AlertDialog(
              title: const Text('Weather'),
              content: Column(
                children: <Widget>[
                  Text('ID: ${_weather[0].id}'),
                  Text('main: ${_weather[0].main}'),
                  Text('name: ${_weather[0].description}'),
                  Text('icon: ${_weather[0].icon}'),
                  Text('temp: ${_weather[0].temp}'),
                  Text('feelsLike: ${_weather[0].feelsLike}'),
                  Text('tempMin: ${_weather[0].tempMin}'),
                  Text('tempMax: ${_weather[0].tempMax}'),
                  Text('pressure: ${_weather[0].pressure}'),
                  Text('humidity: ${_weather[0].humidity}'),
                  Text('windSpeed: ${_weather[0].windSpeed}'),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    _showWeather = false;
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
          if (_canSearch) {
            return Column(
              children: <Widget>[
                TextFormField(
                  controller: _controller,
                  decoration: const InputDecoration(border: OutlineInputBorder()),
                ),
                IconButton(
                  onPressed: () {
                    //print('clicked\n');
                    //print(_controller.text);
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
                  //print(_controller.text);
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
                        _getWeather(city.lat, city.lon);
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
