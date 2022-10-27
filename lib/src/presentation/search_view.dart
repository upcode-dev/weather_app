import 'package:flutter/material.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/presentation/containers/index.dart';
import 'package:weather_app/src/presentation/util/extensions.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color(0xbb268de2),
            Color(0x70229eff),
            //Color(0x00a6e1e5),
          ],
        ),
      ),
      child: CitiesContainer(
        builder: (BuildContext context, List<City> cities) {
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 32, 16, 16),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        controller: _controller,
                        cursorColor: const Color(0xFF5C5C5C),
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          label: Center(
                            child: Text(
                              'City name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 32, 16),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.lightGreen,
                      child: IconButton(
                        iconSize: 32,
                        color: Colors.white,
                        onPressed: () {
                          context.dispatch(GetCities(_controller.text));
                          _controller.clear();
                        },
                        icon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              if (cities.isNotEmpty) ...<Widget>[
                const Text(
                  'Pick a location:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: cities.length,
                    itemBuilder: (BuildContext context, int index) {
                      final City city = cities[index];

                      return GestureDetector(
                        onTap: () {
                          context.dispatch(GetWeather(city));
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(
                                Icons.location_pin,
                                color: Colors.white,
                              ),
                              Text(
                                '${city.name}, ${city.country}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
