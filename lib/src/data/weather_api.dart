import 'package:injectable/injectable.dart';
import 'package:weather_app/src/data/service_api.dart';
import 'package:weather_app/src/models/index.dart';

@singleton
class WeatherApi {
  const WeatherApi(this._service, @Named('apiKey') this._appId);

  final ApiService _service;
  final String _appId;

  Future<List<City>> getCities(String query) async {
    return _service.getCities(query, _appId);
  }

  Future<Weather> getWeather(City city) async {
    return _service.getWeather(lat: city.lat, lon: city.lon, appId: _appId);
  }
}
