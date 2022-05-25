import 'package:weather_app2/actions/index.dart';
import 'package:weather_app2/models/city.dart';

class GetCities implements AppAction {
  GetCities(this.cityName);

  final String cityName;

  @override
  String toString() {
    return 'GetCities{cityName: $cityName}';
  }
}

class GetCitiesSuccessful implements AppAction {
  GetCitiesSuccessful(this.cities);

  final List<City> cities;

  @override
  String toString() {
    return 'GetCitiesSuccessful{cities: $cities}';
  }
}

class GetCitiesError implements ErrorAction {
  GetCitiesError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetCitiesError{error: $error}';
  }
}
