import 'package:meta/meta.dart';
import 'package:weather_app2/models/city.dart';
import 'package:weather_app2/models/weather.dart';

@immutable
class AppState {
  const AppState({
    this.cities = const <City>[],
    this.weather = const <Weather>[],
    this.isLoading = false,
    this.canShowResult = false,
    this.initialSearch = true,
    this.isMetric = true,
  });

  final List<City> cities;
  final List<Weather> weather;
  final bool isLoading;
  final bool canShowResult;
  final bool initialSearch;
  final bool isMetric;

  AppState copyWith({
    List<City>? cities,
    List<Weather>? weather,
    bool? isLoading,
    bool? canShowResult,
    bool? initialSearch,
    bool? isMetric,
  }) {
    return AppState(
      cities: cities != null ? List<City>.unmodifiable(cities) : this.cities,
      weather: weather != null ? List<Weather>.unmodifiable(weather) : this.weather,
      isLoading: isLoading ?? this.isLoading,
      canShowResult: canShowResult ?? this.canShowResult,
      initialSearch: initialSearch ?? this.initialSearch,
      isMetric: isMetric ?? this.isMetric,
    );
  }

  int findWeatherUsingIndexWhere(List<Weather> weather, String cityName) {
    final int index = weather.indexWhere((Weather element) => element.cityName == cityName);
    if (index >= 0) {
      return index;
    } else {
      return -1;
    }
  }

  @override
  String toString() {
    return 'AppState{cities: $cities, weather: $weather, isLoading: $isLoading, canShowResult: $canShowResult, isMetric: $isMetric, initialSearch: $initialSearch}';
  }
}
