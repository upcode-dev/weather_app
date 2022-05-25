import 'package:meta/meta.dart';
import 'package:weather_app2/models/city.dart';
import 'package:weather_app2/models/weather.dart';

@immutable
class AppState {
  const AppState({
    this.cities = const <City>[],
    this.weather = const <Weather>[],
    this.isLoading = false,
    this.canSearch = true,
  });

  final List<City> cities;
  final List<Weather> weather;
  final bool isLoading;
  final bool canSearch;

  AppState copyWith({
    List<City>? cities,
    List<Weather>? weather,
    bool? isLoading,
    bool? canSearch,
  }) {
    return AppState(
      cities: cities != null ? List<City>.unmodifiable(cities) : this.cities,
      weather: weather != null ? List<Weather>.unmodifiable(weather) : this.weather,
      isLoading: isLoading ?? this.isLoading,
      canSearch: canSearch ?? this.canSearch,
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
    return 'AppState{cities: $cities, weather: $weather, isLoading: $isLoading, canSearch: $canSearch}';
  }
}
