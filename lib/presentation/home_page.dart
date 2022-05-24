import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weather_app2/models/city.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<City> _cities = <City>[];
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

                    return Column(
                      children: <Widget>[
                        Text('City name: ${city.name}'),
                        Text('Country code: ${city.country}'),
                        Text('latitude: ${city.lat}'),
                        Text('longitude: ${city.lon}'),
                        const SizedBox(height: 10),
                      ],
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
