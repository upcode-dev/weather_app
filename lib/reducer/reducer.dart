import 'package:redux/redux.dart';
import 'package:weather_app2/actions/get_cities.dart';
import 'package:weather_app2/actions/get_weather.dart';
import 'package:weather_app2/actions/index.dart';
import 'package:weather_app2/models/app_state.dart';
import 'package:weather_app2/models/city.dart';
import 'package:weather_app2/models/weather.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is! AppAction) {
    throw ArgumentError('All actions should implement AppAction.');
  }

  print(action);
  final AppState newState = _reducer(state, action);
  print(newState.isLoading);
  return newState;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetCities>(_getCities),
  TypedReducer<AppState, GetCitiesSuccessful>(_getCitiesSuccessful),
  TypedReducer<AppState, GetCitiesError>(_getCitiesError),
  TypedReducer<AppState, GetWeather>(_getWeather),
  TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful),
  TypedReducer<AppState, GetWeatherError>(_getWeatherError),
]);

AppState _getCities(AppState state, GetCities action) {
  return state.copyWith(isLoading: true);
  //return state.copyWith(isLoading: true, canSearch: false);
}

AppState _getCitiesSuccessful(AppState state, GetCitiesSuccessful action) {
  return state.copyWith(cities: <City>[...state.cities, ...action.cities], isLoading: false);
}

AppState _getCitiesError(AppState state, GetCitiesError action) {
  return state.copyWith(isLoading: false);
}

AppState _getWeather(AppState state, GetWeather action) {
  return state.copyWith(isLoading: true);
}

AppState _getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  return state.copyWith(
    weather: <Weather>[...state.weather, ...action.weather],
    isLoading: false,
  );
}

AppState _getWeatherError(AppState state, GetWeatherError action) {
  return state.copyWith(isLoading: false);
}
