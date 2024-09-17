import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/presentation/containers/index.dart';
import 'package:weather_app/src/presentation/util/extensions.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final int minutes = now.minute;
    String minutesTwoDigits;
    if (minutes < 10) {
      minutesTwoDigits = '0$minutes';
    } else {
      minutesTwoDigits = minutes.toString();
    }
    final String day = DateFormat('EEEE').format(now);

    return SelectedWeatherDataContainer(
      builder: (BuildContext context, SelectedWeatherDataViewModel vm) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xbb268de2),
                Color(0x70229eff),
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 32, 16, 16),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                        // controller: _controller,
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
                          // StoreProvider.of<AppState>(context).dispatch(GetCities(_controller.text));
                          // _controller.clear();
                        },
                        icon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
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
                                    vm.temp,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                                /* todo
                                Flexible(
                                  child: Text(
                                    state.cities[0].name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                    ),
                                  ),
                                ),
                                */
                                const SizedBox(height: 32),
                                Flexible(
                                  child: Text(
                                    '${vm.tempMax} / ${vm.tempMin}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    'Feels like ${vm.feelsLike}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    '$day, ${now.hour.toString()}:$minutesTwoDigits',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
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
                                  image: NetworkImage('https://openweathermap.org/img/wn/${vm.icon}@2x.png'),
                                ),
                                Flexible(
                                  child: Text(
                                    vm.description,
                                    textAlign: TextAlign.end,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 56),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            'Humidity:\n${vm.humidity}%',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            'Wind:\n${vm.windSpeed} km/h',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 48),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Flexible(
                          child: Text(
                            'Imperial units',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Switch(
                          value: vm.isMetric,
                          onChanged: (bool value) {
                            context.dispatch(SetIsMetric(isMetric: value));
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        ),
                        const Flexible(
                          child: Text(
                            'Metric units',
                            style: TextStyle(
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
      },
    );
  }
}
