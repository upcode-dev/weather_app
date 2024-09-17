import 'package:injectable/injectable.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/index.dart';

@singleton
class AppEpic extends EpicClass<AppState> {
  AppEpic(this._api);

  final WeatherApi _api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetCitiesStart>(_getCities),
      TypedEpic<AppState, GetWeatherStart>(_getWeather),
    ])(actions, store);
  }

  Stream<AppAction> _getCities(Stream<GetCitiesStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetCitiesStart action) => _api.getCities(action.query))
        .map(GetCities.successful)
        .onErrorReturnWith(GetCities.error);
  }

  Stream<AppAction> _getWeather(Stream<GetWeatherStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetWeatherStart action) => _api.getWeather(action.city))
        .map(GetWeather.successful)
        .onErrorReturnWith(GetWeather.error);
  }
}
