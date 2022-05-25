import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app2/data/weather_api.dart';
import 'package:weather_app2/epics/app_epic.dart';
import 'package:weather_app2/models/app_state.dart';
import 'package:weather_app2/presentation/home_page.dart';
import 'package:weather_app2/reducer/reducer.dart';

void main() {
  final Client client = Client();
  final WeatherApi weatherApi = WeatherApi(client);
  final AppEpic epic = AppEpic(weatherApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.getEpics()),
    ],
  );

  //store.dispatch(GetCities('Cluj'));

  runApp(WeatherApp(store: store));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
