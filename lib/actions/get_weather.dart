import 'package:weather_app2/actions/index.dart';
import 'package:weather_app2/models/weather.dart';

class GetWeather implements AppAction {
  GetWeather(this.lat, this.lon, this.name);

  final double lat;
  final double lon;
  final String name;

  @override
  String toString() {
    return 'GetWeather{lat: $lat, lon: $lon, name: $name}';
  }
}

class GetWeatherSuccessful implements AppAction {
  GetWeatherSuccessful(this.weather);

  final List<Weather> weather;

  @override
  String toString() {
    return 'GetWeatherSuccessful{weather: $weather}';
  }
}

class GetWeatherError implements ErrorAction {
  GetWeatherError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetWeatherError{error: $error}';
  }
}
