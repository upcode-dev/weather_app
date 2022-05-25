import 'package:redux/redux.dart';
import 'package:weather_app2/actions/convert_to_imperial.dart';
import 'package:weather_app2/actions/convert_to_metric.dart';
import 'package:weather_app2/actions/get_cities.dart';
import 'package:weather_app2/actions/get_weather.dart';
import 'package:weather_app2/actions/index.dart';
import 'package:weather_app2/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is! AppAction) {
    throw ArgumentError('All actions should implement AppAction.');
  }

  //print(action);
  final AppState newState = _reducer(state, action);
  //print(newState.isLoading);
  return newState;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetCities>(_getCities),
  TypedReducer<AppState, GetCitiesSuccessful>(_getCitiesSuccessful),
  TypedReducer<AppState, GetCitiesError>(_getCitiesError),
  TypedReducer<AppState, GetWeather>(_getWeather),
  TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful),
  TypedReducer<AppState, GetWeatherError>(_getWeatherError),
  TypedReducer<AppState, ConvertToMetric>(_convertToMetric),
  TypedReducer<AppState, ConvertToMetricSuccessful>(_convertToMetricSuccessful),
  TypedReducer<AppState, ConvertToImperial>(_convertToImperial),
  TypedReducer<AppState, ConvertToImperialSuccessful>(_convertToImperialSuccessful),
]);

AppState _getCities(AppState state, GetCities action) {
  return state.copyWith(isLoading: true, canShowResult: false);
}

AppState _getCitiesSuccessful(AppState state, GetCitiesSuccessful action) {
  //return state.copyWith(cities: <City>[...state.cities, ...action.cities], isLoading: false);
  return state.copyWith(cities: action.cities, isLoading: false);
}

AppState _getCitiesError(AppState state, GetCitiesError action) {
  return state.copyWith(isLoading: false);
}

AppState _getWeather(AppState state, GetWeather action) {
  return state.copyWith(isLoading: true);
}

AppState _getWeatherSuccessful(AppState state, GetWeatherSuccessful action) {
  return state.copyWith(
    weather: action.weather,
    isLoading: false,
    canShowResult: true,
  );
}

AppState _getWeatherError(AppState state, GetWeatherError action) {
  return state.copyWith(isLoading: false);
}

AppState _convertToMetric(AppState state, ConvertToMetric action) {
  return state.copyWith(isMetric: true);
}

AppState _convertToMetricSuccessful(AppState state, ConvertToMetricSuccessful action) {
  return state.copyWith();
}

AppState _convertToImperial(AppState state, ConvertToImperial action) {
  return state.copyWith(isMetric: false);
}

AppState _convertToImperialSuccessful(AppState state, ConvertToImperialSuccessful action) {
  return state.copyWith();
}
