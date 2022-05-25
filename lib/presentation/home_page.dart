import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';
import 'package:weather_app2/actions/get_cities.dart';
import 'package:weather_app2/actions/get_weather.dart';
import 'package:weather_app2/models/app_state.dart';
import 'package:weather_app2/models/city.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*final Store<AppState> store = StoreProvider.of<AppState>(context);
    final AppState state = store.state;*/

    final TextEditingController _controller = TextEditingController();

    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Center(child: Text('Weather App')),
          ),
          body: Builder(
            builder: (BuildContext context) {
              if (state.isLoading) {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xbb268de2),
                        Color(0x70229eff),
                        //Color(0x00a6e1e5),
                      ],
                    ),
                  ),
                  child: const Center(child: CircularProgressIndicator()),
                );
              }

              if (state.canShowResult) {
                final DateTime now = DateTime.now();
                final int minutes = now.minute;
                String minutesTwoDigits;
                if (minutes < 10) {
                  minutesTwoDigits = '0$minutes';
                } else {
                  minutesTwoDigits = minutes.toString();
                }
                final String day = DateFormat('EEEE').format(now);

                /* action?
                final int celsiusTemp = state.weather[0].temp;
                final int fahrenheitTemp = ((celsiusTemp * 1.8) + 32).round();
                int temp = celsiusTemp;

                final int celsiusMaxTemp = state.weather[0].tempMax;
                final int fahrenheitMaxTemp = ((celsiusMaxTemp * 1.8) + 32).round();
                int maxTemp = celsiusMaxTemp;

                final int celsiusMinTemp = state.weather[0].tempMin;
                final int fahrenheitMinTemp = ((celsiusMinTemp * 1.8) + 32).round();
                int minTemp = celsiusMinTemp;
                bool isMetric = true;
                 */

                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xcc2c96ee),
                        Color(0x50229eff),
                      ],
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: TextFormField(
                                style: const TextStyle(color: Colors.white),
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
                            padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.lightBlue,
                              child: IconButton(
                                iconSize: 32,
                                color: Colors.white,
                                onPressed: () {
                                  StoreProvider.of<AppState>(context).dispatch(
                                    GetCities(_controller.text),
                                  );
                                },
                                icon: const Icon(Icons.search),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 6,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Flexible(
                                          child: Text(
                                            '${state.weather[0].temp}\u2103',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            state.cities[0].name,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 32,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 24),
                                        Flexible(
                                          child: Text(
                                            '${state.weather[0].tempMax}\u2103 / ${state.weather[0].tempMin}\u2103',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            'Feels like ${state.weather[0].feelsLike}\u2103',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            '$day, ${now.hour.toString()}:$minutesTwoDigits',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    flex: 4,
                                    fit: FlexFit.tight,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Image(
                                          image: NetworkImage(
                                            'http://openweathermap.org/img/wn/${state.weather[0].icon}@2x.png',
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            state.weather[0].description,
                                            textAlign: TextAlign.end,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 32),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Flexible(
                                  child: Image.asset(
                                    'assets/humidity.png',
                                    width: 56,
                                    height: 56,
                                  ),
                                ),
                                Flexible(
                                  child: Image.asset(
                                    'assets/wind.png',
                                    width: 56,
                                    height: 56,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Flexible(
                                  child: Text(
                                    'Humidity:\n${state.weather[0].humidity}%',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Wind:\n${state.weather[0].windSpeed} km/h',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }

              return Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xbb268de2),
                      Color(0x70229eff),
                      //Color(0x00a6e1e5),
                    ],
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
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
                          padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.lightBlue,
                            child: IconButton(
                              iconSize: 32,
                              color: Colors.white,
                              onPressed: () {
                                StoreProvider.of<AppState>(context).dispatch(
                                  GetCities(_controller.text),
                                );
                              },
                              icon: const Icon(Icons.search),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Expanded(
                      child: ListView.builder(
                        //shrinkWrap: true,
                        itemCount: state.cities.length,
                        itemBuilder: (BuildContext context, int index) {
                          final City city = state.cities[index];
                          return GestureDetector(
                            onTap: () {
                              StoreProvider.of<AppState>(context).dispatch(GetWeather(city.lat, city.lon, city.name));
                            },
                            child: Column(
                              children: <Widget>[
                                Text(
                                  city.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'Country code: ${city.country}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
