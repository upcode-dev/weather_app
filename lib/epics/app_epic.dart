import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app2/actions/get_cities.dart';
import 'package:weather_app2/actions/get_weather.dart';
import 'package:weather_app2/actions/index.dart';
import 'package:weather_app2/data/weather_api.dart';
import 'package:weather_app2/models/app_state.dart';

class AppEpic {
  AppEpic(this._weatherApi);

  final WeatherApi _weatherApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetCities>(_getCities),
      TypedEpic<AppState, GetWeather>(_getWeather),
    ]);
  }

  Stream<AppAction> _getCities(Stream<GetCities> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetCities action) => _weatherApi.getCities(action.cityName))
        //.map<dynamic>((List<City> cities) => GetCitiesSuccessful(cities))
        .map<AppAction>(GetCitiesSuccessful.new)
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetCitiesError(error));
  }

  Stream<AppAction> _getWeather(Stream<GetWeather> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetWeather action) => _weatherApi.getWeather(action.lat, action.lon, action.name))
        //.map<dynamic>((List<Weather> weather) => GetWeatherSuccessful(weather))
        .map<AppAction>(GetWeatherSuccessful.new)
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetWeatherError(error));
  }
}
