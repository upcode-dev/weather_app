import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/models/index.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is! AppAction) {
    throw ArgumentError('All actions should implement AppAction.');
  }

  if (kDebugMode) {
    print(action);
  }

  return _reducer(state, action);
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetCities>(_getCities),
  TypedReducer<AppState, GetCitiesSuccessful>(_getCitiesSuccessful),
  TypedReducer<AppState, GetCitiesError>(_getCitiesError),
  TypedReducer<AppState, GetWeather>(_getWeather),
  TypedReducer<AppState, GetWeatherSuccessful>(_getWeatherSuccessful),
  TypedReducer<AppState, GetWeatherError>(_getWeatherError),
  TypedReducer<AppState, SetIsMetric>(_setIsMetric),
]);

AppState _getCities(AppState state, GetCities action) {
  return state.copyWith(isLoading: true, canShowResult: false);
}

AppState _getCitiesSuccessful(AppState state, GetCitiesSuccessful action) {
  return state.copyWith(cities: action.cities, isLoading: false, initialSearch: false);
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

AppState _setIsMetric(AppState state, SetIsMetric action) {
  return state.copyWith(isMetric: action.isMetric);
}
